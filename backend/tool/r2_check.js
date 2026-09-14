import { DeleteObjectCommand, HeadBucketCommand, HeadObjectCommand, ListBucketsCommand, PutObjectCommand, S3Client } from '@aws-sdk/client-s3';
import { env } from '../src/config/env.js';

const required = [
  ['R2_ACCESS_KEY_ID', env.r2.accessKeyId],
  ['R2_SECRET_ACCESS_KEY', env.r2.secretAccessKey],
  ['R2_ENDPOINT', env.r2.endpoint],
];
const missing = required.filter(([, value]) => !value).map(([name]) => name);
if (missing.length) {
  process.stderr.write(`Missing ${missing.join(', ')}. Fill backend/.env first.\n`);
  process.exit(1);
}

const client = new S3Client({
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

let names = [];
try {
  const listed = await client.send(new ListBucketsCommand({}));
  names = (listed.Buckets || []).map((bucket) => bucket.Name);
  process.stdout.write(names.length ? `buckets: ${names.join(', ')}\n` : 'buckets: (none visible to this key)\n');
} catch (error) {
  process.stdout.write(`list buckets: ${error.Code || error.name || 'error'} (R2 keys are often scoped to one bucket and cannot list)\n`);
}

const reachable = async (bucket) => {
  try {
    await client.send(new HeadBucketCommand({ Bucket: bucket }));
    return true;
  } catch {
    return false;
  }
};

let bucket = env.r2.bucket;
if (!bucket && names.length === 1) bucket = names[0];
if (!bucket) {
  const guesses = ['safedealz-evidence', 'safedealz', 'evidence'];
  for (const guess of guesses) {
    if (await reachable(guess)) {
      bucket = guess;
      process.stdout.write(`discovered bucket: ${bucket}\n`);
      break;
    }
  }
}

if (!bucket) {
  process.stdout.write('R2_BUCKET is empty. Paste the exact Cloudflare bucket name into backend/.env and rerun: node tool/r2_check.js\n');
  process.exit(2);
}

if (names.length && !names.includes(bucket)) {
  process.stderr.write(`R2_BUCKET=${bucket} is not in the listed buckets.\n`);
  process.exit(1);
}

if (!(await reachable(bucket))) {
  process.stderr.write(`Cannot access bucket ${bucket}. Check the name and that this access key is allowed to use it.\n`);
  process.exit(1);
}

const key = '_safedealz/healthcheck.txt';
await client.send(new PutObjectCommand({
  Bucket: bucket,
  Key: key,
  Body: 'ok',
  ContentType: 'text/plain',
}));
await client.send(new HeadObjectCommand({ Bucket: bucket, Key: key }));
await client.send(new DeleteObjectCommand({ Bucket: bucket, Key: key }));
process.stdout.write(`put/head/delete ok in ${bucket}\n`);
if (!env.r2.bucket) {
  process.stdout.write(`Set R2_BUCKET=${bucket} in backend/.env\n`);
}
