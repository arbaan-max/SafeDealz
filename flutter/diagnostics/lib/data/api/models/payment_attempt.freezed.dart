// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_attempt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentAttempt _$PaymentAttemptFromJson(Map<String, dynamic> json) {
  return _PaymentAttempt.fromJson(json);
}

/// @nodoc
mixin _$PaymentAttempt {
  DateTime? get at => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this PaymentAttempt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAttemptCopyWith<PaymentAttempt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAttemptCopyWith<$Res> {
  factory $PaymentAttemptCopyWith(
    PaymentAttempt value,
    $Res Function(PaymentAttempt) then,
  ) = _$PaymentAttemptCopyWithImpl<$Res, PaymentAttempt>;
  @useResult
  $Res call({DateTime? at, String? event, String? status, String? note});
}

/// @nodoc
class _$PaymentAttemptCopyWithImpl<$Res, $Val extends PaymentAttempt>
    implements $PaymentAttemptCopyWith<$Res> {
  _$PaymentAttemptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? at = freezed,
    Object? event = freezed,
    Object? status = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            at: freezed == at
                ? _value.at
                : at // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            event: freezed == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentAttemptImplCopyWith<$Res>
    implements $PaymentAttemptCopyWith<$Res> {
  factory _$$PaymentAttemptImplCopyWith(
    _$PaymentAttemptImpl value,
    $Res Function(_$PaymentAttemptImpl) then,
  ) = __$$PaymentAttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? at, String? event, String? status, String? note});
}

/// @nodoc
class __$$PaymentAttemptImplCopyWithImpl<$Res>
    extends _$PaymentAttemptCopyWithImpl<$Res, _$PaymentAttemptImpl>
    implements _$$PaymentAttemptImplCopyWith<$Res> {
  __$$PaymentAttemptImplCopyWithImpl(
    _$PaymentAttemptImpl _value,
    $Res Function(_$PaymentAttemptImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? at = freezed,
    Object? event = freezed,
    Object? status = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$PaymentAttemptImpl(
        at: freezed == at
            ? _value.at
            : at // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        event: freezed == event
            ? _value.event
            : event // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAttemptImpl implements _PaymentAttempt {
  const _$PaymentAttemptImpl({this.at, this.event, this.status, this.note});

  factory _$PaymentAttemptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAttemptImplFromJson(json);

  @override
  final DateTime? at;
  @override
  final String? event;
  @override
  final String? status;
  @override
  final String? note;

  @override
  String toString() {
    return 'PaymentAttempt(at: $at, event: $event, status: $status, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAttemptImpl &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, at, event, status, note);

  /// Create a copy of PaymentAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAttemptImplCopyWith<_$PaymentAttemptImpl> get copyWith =>
      __$$PaymentAttemptImplCopyWithImpl<_$PaymentAttemptImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAttemptImplToJson(this);
  }
}

abstract class _PaymentAttempt implements PaymentAttempt {
  const factory _PaymentAttempt({
    final DateTime? at,
    final String? event,
    final String? status,
    final String? note,
  }) = _$PaymentAttemptImpl;

  factory _PaymentAttempt.fromJson(Map<String, dynamic> json) =
      _$PaymentAttemptImpl.fromJson;

  @override
  DateTime? get at;
  @override
  String? get event;
  @override
  String? get status;
  @override
  String? get note;

  /// Create a copy of PaymentAttempt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAttemptImplCopyWith<_$PaymentAttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
