import 'package:dio/dio.dart';
import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/api/models/diagnostic_import_write.dart';
import 'package:safedealz_store_manager/data/api/models/inspection_write.dart';
import 'package:safedealz_store_manager/data/api/models/media_complete_request.dart';
import 'package:safedealz_store_manager/data/api/models/media_sign_request.dart';
import 'package:safedealz_store_manager/data/api/models/media_sign_request_purpose.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';

abstract interface class DeviceRepository {
  Future<List<Device>> listDevices({String? status});
  Future<Device> createDevice(DeviceCreate body);
  Future<Device> getDevice(String id);
  Future<Device> updateDevice(String id, DeviceUpdate body);
  Future<Device> saveInspection(String id, Map<String, String> answers, {bool complete = false});
  Future<void> uploadEvidence(String deviceId, CapturedEvidence evidence);
  Future<void> importDiagnostic(String deviceId, Map<String, dynamic> payload, String signature);
}

class DeviceRepositoryImpl implements DeviceRepository {
  DeviceRepositoryImpl(this._client, [this._dio]);
  final OperationsClient _client;
  final Dio? _dio;

  @override
  Future<List<Device>> listDevices({String? status}) async {
    final response = await _client.listDevices(status: status);
    return response.data;
  }

  @override
  Future<Device> createDevice(DeviceCreate body) async {
    final response = await _client.createDevice(body: body);
    return response.data;
  }

  @override
  Future<Device> getDevice(String id) async {
    final response = await _client.getDevice(id: id);
    return response.data;
  }

  @override
  Future<Device> updateDevice(String id, DeviceUpdate body) async {
    final response = await _client.updateDevice(id: id, body: body);
    return response.data;
  }

  @override
  Future<Device> saveInspection(
    String id,
    Map<String, String> answers, {
    bool complete = false,
  }) async {
    final response = await _client.saveInspection(
      id: id,
      body: InspectionWrite(answers: answers, complete: complete),
    );
    return response.data;
  }

  @override
  Future<void> uploadEvidence(String deviceId, CapturedEvidence evidence) async {
    final signed = await _client.signDeviceMedia(
      id: deviceId,
      body: MediaSignRequest(
        purpose: MediaSignRequestPurpose.fromJson(evidence.purpose),
        contentType: evidence.contentType,
        sizeBytes: evidence.bytes.length,
        checksumSha256: evidence.checksumSha256,
      ),
    );
    final upload = signed.data.upload;
    if (upload?.live == true && upload?.url != null && _dio != null) {
      await _dio.put(
        upload!.url!,
        data: evidence.bytes,
        options: Options(headers: {'content-type': evidence.contentType}),
      );
    }
    await _client.completeDeviceMedia(
      id: deviceId,
      body: MediaCompleteRequest(
        objectKey: signed.data.objectKey!,
        checksumSha256: evidence.checksumSha256,
      ),
    );
  }

  @override
  Future<void> importDiagnostic(
    String deviceId,
    Map<String, dynamic> payload,
    String signature,
  ) async {
    await _client.importDiagnostic(
      body: DiagnosticImportWrite(
        deviceId: deviceId,
        payload: payload,
        signature: signature,
      ),
    );
  }
}
