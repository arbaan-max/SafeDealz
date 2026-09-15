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
  final _scroll = ScrollController();
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

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
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
  int get _totalSteps => _catalog == null ? 9 : tradeInFormTotalSteps(_catalog!);
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

  void _scrollToTop() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scroll.hasClients) {
        _scroll.jumpTo(0);
      }
    });
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
      _scrollToTop();
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _saving = false;
      });
      _scrollToTop();
    }
  }

  Future<void> _continue() async {
    final issue = _stepError();
    if (issue != null) {
      setState(() => _error = issue);
      _scrollToTop();
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
      _scrollToTop();
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _saving = false;
      });
      _scrollToTop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Physical inspection',
      showBell: false,
      onBack: _saving ? null : _back,
      actionBar: FilledButton(
        onPressed: _saving ? null : _continue,
        child: Text(_step == inspectionStepCount - 1 ? 'Continue to evidence' : 'Continue'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              controller: _scroll,
              children: [
                SdFlowProgress(
                  current: tradeInInspectionStep(_step),
                  total: _totalSteps,
                  label: _stepTitle,
                ),
                Text(_stepTitle, style: Theme.of(context).textTheme.headlineSmall),
                if (_step == 3 && _apple) ...[
                  const SizedBox(height: 12),
                  SdCard(
                    tint: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Entered battery health: ${_device?.batteryHealth ?? 'Not entered'}%'),
                        Text('Condition band: ${batteryBand(_device?.batteryHealth)}'),
                      ],
                    ),
                  ),
                ],
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ],
                for (final field in _fields) ...[
                  const SizedBox(height: 16),
                  Text(field.label, style: Theme.of(context).textTheme.titleSmall),
                  SdOptionTiles(
                    options: field.options,
                    selected: _answers[field.key],
                    onSelected: (value) => setState(() => _answers[field.key] = value),
                  ),
                ],
                if (_step == 4 && _answers['deviceAge'] != null && _answers['deviceAge'] != _exemptAge)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: OutlinedButton(
                      onPressed: () => GoRouter.maybeOf(context)?.goNamed(
                        cameraRoute,
                        pathParameters: {'id': widget.deviceId, 'purpose': 'bill'},
                      ),
                      child: const Text('Capture bill'),
                    ),
                  ),
              ],
            ),
    );
  }
}
