import 'dart:io';

import 'package:path_provider/path_provider.dart';

class LocalEvidenceStore {
  const LocalEvidenceStore();

  Future<Directory> _dir(String deviceId) async {
    final root = await getApplicationDocumentsDirectory();
    final dir = Directory('${root.path}/evidence/$deviceId');
    await dir.create(recursive: true);
    return dir;
  }

  Future<File> save(String deviceId, String purpose, String sourcePath) async {
    final ext = sourcePath.contains('.') ? sourcePath.split('.').last : (purpose == 'rotation' ? 'mp4' : 'jpg');
    final dest = File('${(await _dir(deviceId)).path}/$purpose.$ext');
    if (dest.existsSync()) {
      await dest.delete();
    }
    return File(sourcePath).copy(dest.path);
  }

  Future<File?> find(String deviceId, String purpose) async {
    try {
      final dir = await _dir(deviceId);
      if (!dir.existsSync()) return null;
      final matches = dir
          .listSync()
          .whereType<File>()
          .where((file) => file.uri.pathSegments.last.startsWith('$purpose.'))
          .toList();
      return matches.isEmpty ? null : matches.first;
    } catch (_) {
      return null;
    }
  }

  Future<Map<String, File>> list(String deviceId) async {
    try {
      final dir = await _dir(deviceId);
      if (!dir.existsSync()) return const {};
      final files = <String, File>{};
      for (final entity in dir.listSync().whereType<File>()) {
        final name = entity.uri.pathSegments.last;
        final dot = name.lastIndexOf('.');
        if (dot <= 0) continue;
        files[name.substring(0, dot)] = entity;
      }
      return files;
    } catch (_) {
      return const {};
    }
  }

  Future<void> delete(String deviceId, String purpose) async {
    final file = await find(deviceId, purpose);
    if (file != null && file.existsSync()) {
      await file.delete();
    }
  }
}
