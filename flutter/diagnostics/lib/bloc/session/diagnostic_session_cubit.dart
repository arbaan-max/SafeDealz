import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_diagnostics/data/api/clients/operations_client.dart';
import 'package:safedealz_diagnostics/data/diagnostics/hardware.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/data/diagnostics/qr.dart';
import 'package:safedealz_diagnostics/data/diagnostics/store.dart';

class DiagnosticSessionState {
  const DiagnosticSessionState({
    required this.online,
    required this.identityLoading,
    required this.identityUnavailable,
    required this.touch,
    this.identity,
    this.permissions,
    this.automated = const [],
    this.buttons = const [],
    this.sensors = const [],
    this.submitMessage,
    this.resultSaved = false,
    this.savedPayload,
    this.checkLabels = const {},
    this.qrPayload,
  });

  factory DiagnosticSessionState.initial({bool online = true}) =>
      DiagnosticSessionState(
        online: online,
        identityLoading: true,
        identityUnavailable: false,
        touch: TouchCoverage(),
      );

  final bool online;
  final bool identityLoading;
  final bool identityUnavailable;
  final DeviceIdentity? identity;
  final PermissionSnapshot? permissions;
  final List<CheckItem> automated;
  final List<CheckItem> buttons;
  final List<CheckItem> sensors;
  final TouchCoverage touch;
  final String? submitMessage;
  final bool resultSaved;
  final String? savedPayload;
  final Map<String, String> checkLabels;
  final String? qrPayload;

  bool get canStart =>
      identity != null && !identity!.unsupported && !identityUnavailable;

  List<CheckItem> get allChecks => [...automated, ...buttons, ...sensors];

  int count(CheckOutcome outcome) =>
      allChecks.where((item) => item.outcome == outcome).length;

  DiagnosticSessionState copyWith({
    bool? online,
    bool? identityLoading,
    bool? identityUnavailable,
    DeviceIdentity? identity,
    bool clearIdentity = false,
    PermissionSnapshot? permissions,
    List<CheckItem>? automated,
    List<CheckItem>? buttons,
    List<CheckItem>? sensors,
    TouchCoverage? touch,
    String? submitMessage,
    bool clearSubmitMessage = false,
    bool? resultSaved,
    String? savedPayload,
    Map<String, String>? checkLabels,
    String? qrPayload,
  }) {
    return DiagnosticSessionState(
      online: online ?? this.online,
      identityLoading: identityLoading ?? this.identityLoading,
      identityUnavailable: identityUnavailable ?? this.identityUnavailable,
      identity: clearIdentity ? null : (identity ?? this.identity),
      permissions: permissions ?? this.permissions,
      automated: automated ?? this.automated,
      buttons: buttons ?? this.buttons,
      sensors: sensors ?? this.sensors,
      touch: touch ?? this.touch,
      submitMessage:
          clearSubmitMessage ? null : (submitMessage ?? this.submitMessage),
      resultSaved: resultSaved ?? this.resultSaved,
      savedPayload: savedPayload ?? this.savedPayload,
      checkLabels: checkLabels ?? this.checkLabels,
      qrPayload: qrPayload ?? this.qrPayload,
    );
  }
}

class DiagnosticSessionCubit extends Cubit<DiagnosticSessionState> {
  DiagnosticSessionCubit(this._hardware, this._store, [this._operations])
      : super(DiagnosticSessionState.initial(online: _hardware.online));

  final DiagnosticsHardware _hardware;
  final DiagnosticStore _store;
  final OperationsClient? _operations;

  List<CheckItem> _labeled(List<CheckItem> items) => [
        for (final item in items)
          CheckItem(
            id: item.id,
            label: state.checkLabels[item.id] ?? item.label,
            outcome: item.outcome,
          ),
      ];

  Future<void> loadIdentity() async {
    emit(state.copyWith(identityLoading: true));
    Map<String, String> labels = state.checkLabels;
    if (_operations != null) {
      try {
        final catalog = (await _operations.getCatalog()).data;
        labels = {
          for (final check in catalog.diagnosticChecks) check.id: check.label,
        };
      } catch (_) {}
    }
    final identity = await _hardware.readIdentity();
    emit(
      state.copyWith(
        identityLoading: false,
        identity: identity,
        clearIdentity: identity == null,
        identityUnavailable: identity == null,
        online: _hardware.online,
        checkLabels: labels,
      ),
    );
  }

  Future<void> requestPermissions() async {
    final granted = await _hardware.requestPermissions();
    emit(state.copyWith(permissions: granted));
  }

  Future<void> runAutomated() async {
    final permissions = state.permissions ?? const PermissionSnapshot();
    emit(state.copyWith(automated: _labeled(await _hardware.runAutomated(permissions))));
  }

  Future<void> runButtons() async {
    emit(state.copyWith(buttons: _labeled(await _hardware.runButtons())));
  }

  Future<void> runSensors() async {
    final permissions = state.permissions ?? const PermissionSnapshot();
    emit(state.copyWith(sensors: _labeled(await _hardware.runSensors(permissions))));
  }

  void clearDot(int index) {
    final next = state.touch.copy();
    next.clearAt(index);
    emit(state.copyWith(touch: next, clearSubmitMessage: true));
  }

  void retryTouch() {
    emit(state.copyWith(touch: state.touch.retried(), clearSubmitMessage: true));
  }

  bool submitTouch() {
    if (!state.touch.canSubmit) {
      emit(state.copyWith(submitMessage: 'Need at least 90% coverage'));
      return false;
    }
    emit(state.copyWith(clearSubmitMessage: true));
    return true;
  }

  Future<void> generateResult() async {
    final identity = state.identity;
    if (identity == null) return;
    final transfer = diagnosticTransferPayload(
      imei1: identity.imei1,
      imei2: identity.imei2,
      nonce: DateTime.now().microsecondsSinceEpoch.toString(),
      expiresAt: DateTime.now().toUtc().add(const Duration(minutes: 15)).toIso8601String(),
      touchPercent: state.touch.percent,
      touchAttempts: state.touch.attempts,
      checks: [
        for (final item in state.allChecks)
          {'id': item.id, 'label': item.label, 'outcome': item.outcome.name},
      ],
    );
    final encoded = encodeDiagnosticQr(transfer);
    await _store.save(jsonEncode(transfer));
    emit(state.copyWith(resultSaved: true, savedPayload: jsonEncode(transfer), qrPayload: encoded));
  }
}
