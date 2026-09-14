import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_create_platform.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/services/imei_scan_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class DeviceIdentityPage extends StatefulWidget {
  const DeviceIdentityPage({super.key, this.deviceId, this.scanAdapter});
  final String? deviceId;
  final ImeiScanAdapter? scanAdapter;

  @override
  State<DeviceIdentityPage> createState() => _DeviceIdentityPageState();
}

class _DeviceIdentityPageState extends State<DeviceIdentityPage> {
  final _form = GlobalKey<FormState>();
  final _model = TextEditingController();
  final _imei1 = TextEditingController();
  final _imei2 = TextEditingController();
  final _battery = TextEditingController();
  DeviceCreatePlatform _platform = DeviceCreatePlatform.apple;
  String? _storage;
  String? _ram;
  String? _branchId;
  String? _error;
  Catalog? _catalog;
  bool _loading = true;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _bootstrap());
  }

  Future<void> _bootstrap() async {
    final accounts = context.read<AccountRepository>();
    final devices = context.read<DeviceRepository>();
    final catalogs = context.read<CatalogRepository>();
    try {
      final catalog = await catalogs.load();
      final account = await accounts.currentAccount();
      final branches = account.assignedBranchIds ?? const <String>[];
      var error = branches.isEmpty ? 'No store assigned' : null;
      if (widget.deviceId != null) {
        final device = await devices.getDevice(widget.deviceId!);
        _model.text = device.model;
        _imei1.text = device.imei1;
        _imei2.text = device.imei2;
        _storage = device.storage;
        _ram = (device.ram ?? '').isEmpty ? null : device.ram;
        _battery.text = device.batteryHealth?.toString() ?? '';
        _platform = device.platform == DevicePlatform.android
            ? DeviceCreatePlatform.android
            : DeviceCreatePlatform.apple;
      }
      if (!mounted) return;
      setState(() {
        _catalog = catalog;
        _branchId = branches.isEmpty ? null : branches.first;
        _error = error;
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

  @override
  void dispose() {
    _model.dispose();
    _imei1.dispose();
    _imei2.dispose();
    _battery.dispose();
    super.dispose();
  }

  Future<void> _scan() async {
    final adapter = widget.scanAdapter ?? context.read<ImeiScanAdapter>();
    final scanned = await adapter.scan();
    if (scanned == null || !mounted) return;
    setState(() {
      _imei1.text = scanned.imei1;
      _imei2.text = scanned.imei2;
    });
  }

  Future<void> _save() async {
    if (_form.currentState?.validate() != true || _branchId == null) return;
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      final repo = context.read<DeviceRepository>();
      final saved = widget.deviceId == null
          ? await repo.createDevice(
              DeviceCreate(
                branchId: _branchId!,
                platform: _platform,
                model: _model.text.trim(),
                imei1: _imei1.text.trim(),
                imei2: _imei2.text.trim(),
                storage: _storage!,
                ram: _platform == DeviceCreatePlatform.android ? _ram : null,
                batteryHealth: _platform == DeviceCreatePlatform.apple
                    ? int.parse(_battery.text.trim())
                    : null,
              ),
            )
          : await repo.updateDevice(
              widget.deviceId!,
              DeviceUpdate(
                model: _model.text.trim(),
                imei1: _imei1.text.trim(),
                imei2: _imei2.text.trim(),
                storage: _storage,
                ram: _platform == DeviceCreatePlatform.android ? _ram : null,
                batteryHealth: _platform == DeviceCreatePlatform.apple
                    ? int.parse(_battery.text.trim())
                    : null,
              ),
            );
      if (!mounted) return;
      GoRouter.maybeOf(context)?.goNamed(
        inspectionRoute,
        pathParameters: {'id': saved.id},
      );
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Device identity',
      showBell: false,
      onBack: () => GoRouter.maybeOf(context)?.goNamed(homeRoute),
      actionBar: FilledButton(
        onPressed: _saving || _branchId == null ? null : _save,
        child: Text(_saving ? 'Saving…' : 'Continue'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _form,
              child: ListView(
                children: [
                  const SdSteps(current: 1),
                  Text('Meet the device', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  const Text('Start with the phone’s identity.', style: TextStyle(color: Color(0xFF526079))),
                  const SizedBox(height: 23),
                  if (_error != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                    ),
                  TextFormField(
                    controller: _model,
                    decoration: const InputDecoration(labelText: 'Device name / model'),
                    validator: (value) =>
                        value != null && value.trim().isNotEmpty ? null : 'Enter the device model.',
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _imei1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'IMEI 1'),
                    validator: _imei,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _imei2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'IMEI 2'),
                    validator: _imei,
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton.icon(
                    onPressed: _scan,
                    icon: const Icon(Icons.qr_code_scanner),
                    label: const Text('Scan IMEIs'),
                  ),
                  const SizedBox(height: 16),
                  const Text('Device type', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8),
                  SegmentedButton<DeviceCreatePlatform>(
                    segments: const [
                      ButtonSegment(value: DeviceCreatePlatform.apple, label: Text('Apple')),
                      ButtonSegment(value: DeviceCreatePlatform.android, label: Text('Android')),
                    ],
                    selected: {_platform},
                    onSelectionChanged: (value) {
                      setState(() {
                        _platform = value.first;
                        if (_platform == DeviceCreatePlatform.apple) _ram = null;
                        if (_platform == DeviceCreatePlatform.android) _battery.clear();
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    key: ValueKey(_storage),
                    initialValue: _storage,
                    decoration: const InputDecoration(labelText: 'Storage'),
                    items: [
                      for (final size in _catalog?.storages ?? const <String>[])
                        DropdownMenuItem(value: size, child: Text(size)),
                    ],
                    onChanged: (value) => setState(() => _storage = value),
                    validator: (value) => value == null ? 'Select a storage size.' : null,
                  ),
                  if (_platform == DeviceCreatePlatform.android) ...[
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      key: ValueKey(_ram),
                      initialValue: _ram,
                      decoration: const InputDecoration(labelText: 'RAM'),
                      items: [
                        for (final size in _catalog?.rams ?? const <String>[])
                          DropdownMenuItem(value: size, child: Text(size)),
                      ],
                      onChanged: (value) => setState(() => _ram = value),
                      validator: (value) => value == null ? 'Select a RAM size.' : null,
                    ),
                  ],
                  if (_platform == DeviceCreatePlatform.apple) ...[
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _battery,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Battery health'),
                      validator: (value) {
                        final health = int.tryParse(value?.trim() ?? '');
                        if (health == null || health < 1 || health > 100) {
                          return 'Enter Apple battery health from 1 to 100.';
                        }
                        return null;
                      },
                    ),
                  ],
                ],
              ),
            ),
    );
  }

  String? _imei(String? value) {
    final digits = value?.trim() ?? '';
    if (!RegExp(r'^\d{15}$').hasMatch(digits)) return 'Enter a 15-digit IMEI.';
    if (_imei1.text.trim() == _imei2.text.trim() && digits.isNotEmpty) {
      return 'IMEI 1 and IMEI 2 must be different.';
    }
    return null;
  }
}
