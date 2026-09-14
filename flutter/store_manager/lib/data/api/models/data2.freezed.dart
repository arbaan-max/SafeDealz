// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data2 _$Data2FromJson(Map<String, dynamic> json) {
  return _Data2.fromJson(json);
}

/// @nodoc
mixin _$Data2 {
  int? get availablePaise => throw _privateConstructorUsedError;
  int? get reservedPaise => throw _privateConstructorUsedError;
  int? get processingPaise => throw _privateConstructorUsedError;
  bool? get replayed => throw _privateConstructorUsedError;
  String? get reservationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Data2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data2CopyWith<Data2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data2CopyWith<$Res> {
  factory $Data2CopyWith(Data2 value, $Res Function(Data2) then) =
      _$Data2CopyWithImpl<$Res, Data2>;
  @useResult
  $Res call({
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    bool? replayed,
    String? reservationId,
    String? status,
  });
}

/// @nodoc
class _$Data2CopyWithImpl<$Res, $Val extends Data2>
    implements $Data2CopyWith<$Res> {
  _$Data2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availablePaise = freezed,
    Object? reservedPaise = freezed,
    Object? processingPaise = freezed,
    Object? replayed = freezed,
    Object? reservationId = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            availablePaise: freezed == availablePaise
                ? _value.availablePaise
                : availablePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            reservedPaise: freezed == reservedPaise
                ? _value.reservedPaise
                : reservedPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            processingPaise: freezed == processingPaise
                ? _value.processingPaise
                : processingPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            replayed: freezed == replayed
                ? _value.replayed
                : replayed // ignore: cast_nullable_to_non_nullable
                      as bool?,
            reservationId: freezed == reservationId
                ? _value.reservationId
                : reservationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Data2ImplCopyWith<$Res> implements $Data2CopyWith<$Res> {
  factory _$$Data2ImplCopyWith(
    _$Data2Impl value,
    $Res Function(_$Data2Impl) then,
  ) = __$$Data2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    bool? replayed,
    String? reservationId,
    String? status,
  });
}

/// @nodoc
class __$$Data2ImplCopyWithImpl<$Res>
    extends _$Data2CopyWithImpl<$Res, _$Data2Impl>
    implements _$$Data2ImplCopyWith<$Res> {
  __$$Data2ImplCopyWithImpl(
    _$Data2Impl _value,
    $Res Function(_$Data2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availablePaise = freezed,
    Object? reservedPaise = freezed,
    Object? processingPaise = freezed,
    Object? replayed = freezed,
    Object? reservationId = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$Data2Impl(
        availablePaise: freezed == availablePaise
            ? _value.availablePaise
            : availablePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        reservedPaise: freezed == reservedPaise
            ? _value.reservedPaise
            : reservedPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        processingPaise: freezed == processingPaise
            ? _value.processingPaise
            : processingPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        replayed: freezed == replayed
            ? _value.replayed
            : replayed // ignore: cast_nullable_to_non_nullable
                  as bool?,
        reservationId: freezed == reservationId
            ? _value.reservationId
            : reservationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data2Impl implements _Data2 {
  const _$Data2Impl({
    this.availablePaise,
    this.reservedPaise,
    this.processingPaise,
    this.replayed,
    this.reservationId,
    this.status,
  });

  factory _$Data2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data2ImplFromJson(json);

  @override
  final int? availablePaise;
  @override
  final int? reservedPaise;
  @override
  final int? processingPaise;
  @override
  final bool? replayed;
  @override
  final String? reservationId;
  @override
  final String? status;

  @override
  String toString() {
    return 'Data2(availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, replayed: $replayed, reservationId: $reservationId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data2Impl &&
            (identical(other.availablePaise, availablePaise) ||
                other.availablePaise == availablePaise) &&
            (identical(other.reservedPaise, reservedPaise) ||
                other.reservedPaise == reservedPaise) &&
            (identical(other.processingPaise, processingPaise) ||
                other.processingPaise == processingPaise) &&
            (identical(other.replayed, replayed) ||
                other.replayed == replayed) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    availablePaise,
    reservedPaise,
    processingPaise,
    replayed,
    reservationId,
    status,
  );

  /// Create a copy of Data2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data2ImplCopyWith<_$Data2Impl> get copyWith =>
      __$$Data2ImplCopyWithImpl<_$Data2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data2ImplToJson(this);
  }
}

abstract class _Data2 implements Data2 {
  const factory _Data2({
    final int? availablePaise,
    final int? reservedPaise,
    final int? processingPaise,
    final bool? replayed,
    final String? reservationId,
    final String? status,
  }) = _$Data2Impl;

  factory _Data2.fromJson(Map<String, dynamic> json) = _$Data2Impl.fromJson;

  @override
  int? get availablePaise;
  @override
  int? get reservedPaise;
  @override
  int? get processingPaise;
  @override
  bool? get replayed;
  @override
  String? get reservationId;
  @override
  String? get status;

  /// Create a copy of Data2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data2ImplCopyWith<_$Data2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
