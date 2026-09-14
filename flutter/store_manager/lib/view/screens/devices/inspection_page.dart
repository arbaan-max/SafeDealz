import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/inspection_catalog.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class InspectionPage extends StatefulWidget {
  const InspectionPage({super.key, required this.deviceId});
  final String deviceId;

  @override
  State<InspectionPage> createState() => _InspectionPageState();
}

class _InspectionPageState extends State<InspectionPage> {
  Device? _device;
  Catalog? _catalog;
  final Map<String, String> _answers = {};
  int _step = 0;
  String? _error;
  bool _loading = true;
  bool _saving = false;

  bool get _apple => _device?.platform == DevicePlatform.apple;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final repo = context.read<DeviceRepository>();
    final catalogs = context.read<CatalogRepository>();
    try {
      final catalog = await catalogs.load();
      final device = await repo.getDevice(widget.deviceId);
      if (!mounted) return;
      setState(() {
        _catalog = catalog;
        _device = device;
        _answers
          ..clear()
          ..addAll(device.inspection?.answers ?? {});
        _loading = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  List<InspectionField> get _fields => _catalog == null
      ? const []
      : fieldsForStep(_catalog!, _step, apple: _apple);

  int get inspectionStepCount => _catalog?.inspectionSteps.length ?? 0;
  String get _stepTitle =>
      _catalog == null ? '' : _catalog!.inspectionSteps[_step].title;
  String get _exemptAge =>
      _catalog?.billAgeExemptOption ?? '11 months or older';

  String? _stepError() {
    for (final field in _fields) {
      if (!_answers.containsKey(field.key)) return 'Choose an answer for ${field.label}.';
    }
    if (_step == 4) {
      final age = _answers['deviceAge'];
      if (age != null && age != _exemptAge && _answers['bill'] != 'Yes') {
        return 'Devices below 11 months old require Bill and a live bill capture.';
      }
    }
    return null;
  }

  Future<void> _persist() async {
    await context.read<DeviceRepository>().saveInspection(widget.deviceId, Map.of(_answers));
  }

  Future<void> _back() async {
    setState(() => _saving = true);
    try {
      await _persist();
      if (!mounted) return;
      if (_step == 0) {
        GoRouter.maybeOf(context)?.goNamed(
          deviceEditRoute,
          pathParameters: {'id': widget.deviceId},
        );
        return;
      }
      setState(() {
        _step -= 1;
        _error = null;
        _saving = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _saving = false;
      });
    }
  }

  Future<void> _continue() async {
    final issue = _stepError();
    if (issue != null) {
      setState(() => _error = issue);
      return;
    }
    setState(() => _saving = true);
    try {
      await _persist();
      if (!mounted) return;
      if (_step == inspectionStepCount - 1) {
        GoRouter.maybeOf(context)?.goNamed(
          evidenceRoute,
          pathParameters: {'id': widget.deviceId},
        );
        return;
      }
      setState(() {
        _step += 1;
        _error = null;
        _saving = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _saving = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Physical inspection',
      showBell: false,
      onBack: _saving ? null : _back,
      actionBar: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: _saving ? null : _back,
              child: const Text('Back'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: FilledButton(
              onPressed: _saving ? null : _continue,
              child: Text(_step == inspectionStepCount - 1 ? 'Continue to evidence' : 'Continue'),
            ),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                const SdSteps(current: 2),
                Text('Step ${_step + 1} of $inspectionStepCount'),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: inspectionStepCount == 0 ? 0 : (_step + 1) / inspectionStepCount),
                const SizedBox(height: 16),
                Text(_stepTitle, style: Theme.of(context).textTheme.headlineSmall),
                if (_step == 3 && _apple) ...[
                  const SizedBox(height: 12),
                  Text('Entered battery health: ${_device?.batteryHealth ?? 'Not entered'}%'),
                  Text('Condition band: ${batteryBand(_device?.batteryHealth)}'),
                ],
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ],
                for (final field in _fields) ...[
                  const SizedBox(height: 16),
                  Text(field.label, style: Theme.of(context).textTheme.titleSmall),
                  RadioGroup<String>(
                    groupValue: _answers[field.key],
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() => _answers[field.key] = value);
                    },
                    child: Column(
                      children: [
                        for (final option in field.options)
                          RadioListTile<String>(
                            title: Text(option),
                            value: option,
                          ),
                      ],
                    ),
                  ),
                ],
                if (_step == 4 && _answers['deviceAge'] != null && _answers['deviceAge'] != _exemptAge)
                  TextButton(
                    onPressed: () => GoRouter.maybeOf(context)?.goNamed(
                      cameraRoute,
                      pathParameters: {'id': widget.deviceId, 'purpose': 'bill'},
                    ),
                    child: const Text('Capture bill'),
                  ),
              ],
            ),
    );
  }
}
