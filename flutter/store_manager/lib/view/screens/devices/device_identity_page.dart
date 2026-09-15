import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/api/models/device_create_platform.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/imei.dart';
import 'package:safedealz_store_manager/data/inspection_catalog.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/services/imei_scan_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class DeviceIdentityPage extends StatefulWidget {
  const DeviceIdentityPage({super.key, this.deviceId, this.scanAdapter});
  final String? deviceId;
  final ImeiScanAdapter? scanAdapter;

  @override
  State<DeviceIdentityPage> createState() => _DeviceIdentityPageState();
}

class _DeviceIdentityPageState extends State<DeviceIdentityPage> {
  final _form = GlobalKey<FormState>();
  final _scroll = ScrollController();
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

  int get _imeiLength => imeiDigitCount(_platform);
  int get _totalSteps => _catalog == null ? 9 : tradeInFormTotalSteps(_catalog!);

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
    _scroll.dispose();
    _model.dispose();
    _imei1.dispose();
    _imei2.dispose();
    _battery.dispose();
    super.dispose();
  }

  void _setPlatform(DeviceCreatePlatform value) {
    setState(() {
      _platform = value;
      final limit = imeiDigitCount(value);
      if (_imei1.text.length > limit) _imei1.text = _imei1.text.substring(0, limit);
      if (_imei2.text.length > limit) _imei2.text = _imei2.text.substring(0, limit);
      if (_platform == DeviceCreatePlatform.apple) _ram = null;
      if (_platform == DeviceCreatePlatform.android) _battery.clear();
    });
  }

  Future<void> _scan() async {
    final adapter = widget.scanAdapter ?? context.read<ImeiScanAdapter>();
    final scanned = await adapter.scan();
    if (scanned == null || !mounted) return;
    final limit = _imeiLength;
    setState(() {
      _imei1.text = scanned.imei1.length > limit ? scanned.imei1.substring(0, limit) : scanned.imei1;
      _imei2.text = scanned.imei2.length > limit ? scanned.imei2.substring(0, limit) : scanned.imei2;
    });
  }

  void _scrollToTop() {
    if (_scroll.hasClients) {
      _scroll.jumpTo(0);
    }
  }

  Future<void> _save() async {
    if (_form.currentState?.validate() != true || _branchId == null) {
      _scrollToTop();
      return;
    }
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
      _scrollToTop();
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
              child: SdScrollBody(
                controller: _scroll,
                children: [
                  SdFlowProgress(
                    current: tradeInIdentityStep(),
                    total: _totalSteps,
                    label: 'Device identity',
                  ),
                  Text('Meet the device', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  const Text('Choose the platform first so IMEI length can be checked.', style: TextStyle(color: AppTheme.muted)),
                  const SizedBox(height: 20),
                  if (_error != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                    ),
                  const SdFieldLabel('Device type'),
                  Row(
                    children: [
                      Expanded(
                        child: _PlatformCard(
                          selected: _platform == DeviceCreatePlatform.apple,
                          icon: SdIcons.apple,
                          label: 'Apple',
                          onTap: () => _setPlatform(DeviceCreatePlatform.apple),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _PlatformCard(
                          selected: _platform == DeviceCreatePlatform.android,
                          icon: SdIcons.android,
                          label: 'Android',
                          onTap: () => _setPlatform(DeviceCreatePlatform.android),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _model,
                    decoration: const InputDecoration(labelText: 'Device name / model'),
                    validator: (value) =>
                        value != null && value.trim().isNotEmpty ? null : 'Enter the device model.',
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    key: const ValueKey('imei1'),
                    controller: _imei1,
                    keyboardType: TextInputType.number,
                    maxLength: _imeiLength,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(_imeiLength),
                    ],
                    decoration: InputDecoration(
                      labelText: 'IMEI 1',
                      helperText: '$_imeiLength-digit GSMA IMEI',
                      counterText: '',
                    ),
                    validator: _imei,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    key: const ValueKey('imei2'),
                    controller: _imei2,
                    keyboardType: TextInputType.number,
                    maxLength: _imeiLength,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(_imeiLength),
                    ],
                    decoration: InputDecoration(
                      labelText: 'IMEI 2',
                      helperText: '$_imeiLength-digit GSMA IMEI',
                      counterText: '',
                    ),
                    validator: _imei,
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton.icon(
                    onPressed: _scan,
                    icon: const Icon(SdIcons.barcode),
                    label: const Text('Scan IMEIs'),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    key: const ValueKey('identity-storage'),
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
                    const SdFieldLabel('RAM'),
                    DropdownButtonFormField<String>(
                      key: const ValueKey('identity-ram'),
                      initialValue: _ram,
                      decoration: const InputDecoration(hintText: 'Select RAM'),
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
                    const SdFieldLabel('Battery health'),
                    TextFormField(
                      controller: _battery,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(hintText: 'Enter a whole number from 1 to 100.'),
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
    if (!isImei(digits, _platform)) {
      return 'Enter a $_imeiLength-digit IMEI.';
    }
    if (_imei1.text.trim() == _imei2.text.trim() && digits.isNotEmpty) {
      return 'IMEI 1 and IMEI 2 must be different.';
    }
    return null;
  }
}

class _PlatformCard extends StatelessWidget {
  const _PlatformCard({
    required this.selected,
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final bool selected;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: selected ? AppTheme.selected : AppTheme.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: selected ? AppTheme.skyBlue : AppTheme.border, width: selected ? 1.5 : 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: selected ? AppTheme.skyBlue : AppTheme.ink),
              const SizedBox(width: 8),
              Text(label, style: TextStyle(fontWeight: FontWeight.w700, color: selected ? AppTheme.skyHover : AppTheme.ink)),
            ],
          ),
        ),
      ),
    );
  }
}
