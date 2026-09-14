import { GetObjectCommand, HeadObjectCommand, PutObjectCommand, S3Client } from '@aws-sdk/client-s3';
import { getSignedUrl } from '@aws-sdk/s3-request-presigner';
import { createHmac } from 'node:crypto';
import { env } from '../config/env.js';
import { ApiError } from '../utils/api-error.js';

export const r2Configured = () => Boolean(
  env.nodeEnv !== 'test'
  && env.r2.accessKeyId
  && env.r2.secretAccessKey
  && env.r2.bucket
  && env.r2.endpoint,
);

const stubGrant = (objectKey, contentType, method, expiresAt) => {
  const expires = expiresAt.getTime();
  const signature = createHmac('sha256', env.r2.secretAccessKey || env.jwtSecret).update(`${method}:${objectKey}:${expires}`).digest('hex');
  return {
    method,
    url: `${env.r2.endpoint || 'https://r2.local.test'}/${env.r2.bucket || 'safedealz-evidence'}/${objectKey}?expires=${expires}&signature=${signature}`,
    headers: { 'content-type': contentType },
    expiresAt: expiresAt.toISOString(),
    live: false,
  };
};

let client;
const s3 = () => {
  if (!client) {
    client = new S3Client({
      region: env.r2.region || 'auto',
      endpoint: env.r2.endpoint,
      forcePathStyle: true,
      credentials: {
        accessKeyId: env.r2.accessKeyId,
        secretAccessKey: env.r2.secretAccessKey,
      },
      requestChecksumCalculation: 'WHEN_REQUIRED',
      responseChecksumValidation: 'WHEN_REQUIRED',
    });
  }
  return client;
};

export const signObjectAccess = async (objectKey, contentType, method, expiresAt) => {
  if (!r2Configured()) return stubGrant(objectKey, contentType, method, expiresAt);
  const expiresIn = Math.max(1, Math.ceil((expiresAt.getTime() - Date.now()) / 1000));
  const command = method === 'PUT'
    ? new PutObjectCommand({ Bucket: env.r2.bucket, Key: objectKey, ContentType: contentType })
    : new GetObjectCommand({ Bucket: env.r2.bucket, Key: objectKey });
  const url = await getSignedUrl(s3(), command, { expiresIn });
  return {
    method,
    url,
    headers: method === 'PUT' ? { 'content-type': contentType } : {},
    expiresAt: expiresAt.toISOString(),
    live: true,
  };
};

export const assertObjectUploaded = async (objectKey) => {
  if (!r2Configured()) return;
  try {
    await s3().send(new HeadObjectCommand({ Bucket: env.r2.bucket, Key: objectKey }));
  } catch {
    throw new ApiError(400, 'UPLOAD_INCOMPLETE', 'The file was not found in storage. Capture again.');
  }
};
