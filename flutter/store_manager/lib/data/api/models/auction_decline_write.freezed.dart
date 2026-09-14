// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_decline_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionDeclineWrite _$AuctionDeclineWriteFromJson(Map<String, dynamic> json) {
  return _AuctionDeclineWrite.fromJson(json);
}

/// @nodoc
mixin _$AuctionDeclineWrite {
  AuctionDeclineWriteReasonCode get reasonCode =>
      throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this AuctionDeclineWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionDeclineWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionDeclineWriteCopyWith<AuctionDeclineWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionDeclineWriteCopyWith<$Res> {
  factory $AuctionDeclineWriteCopyWith(
    AuctionDeclineWrite value,
    $Res Function(AuctionDeclineWrite) then,
  ) = _$AuctionDeclineWriteCopyWithImpl<$Res, AuctionDeclineWrite>;
  @useResult
  $Res call({AuctionDeclineWriteReasonCode reasonCode, String? reason});
}

/// @nodoc
class _$AuctionDeclineWriteCopyWithImpl<$Res, $Val extends AuctionDeclineWrite>
    implements $AuctionDeclineWriteCopyWith<$Res> {
  _$AuctionDeclineWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionDeclineWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reasonCode = null, Object? reason = freezed}) {
    return _then(
      _value.copyWith(
            reasonCode: null == reasonCode
                ? _value.reasonCode
                : reasonCode // ignore: cast_nullable_to_non_nullable
                      as AuctionDeclineWriteReasonCode,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionDeclineWriteImplCopyWith<$Res>
    implements $AuctionDeclineWriteCopyWith<$Res> {
  factory _$$AuctionDeclineWriteImplCopyWith(
    _$AuctionDeclineWriteImpl value,
    $Res Function(_$AuctionDeclineWriteImpl) then,
  ) = __$$AuctionDeclineWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuctionDeclineWriteReasonCode reasonCode, String? reason});
}

/// @nodoc
class __$$AuctionDeclineWriteImplCopyWithImpl<$Res>
    extends _$AuctionDeclineWriteCopyWithImpl<$Res, _$AuctionDeclineWriteImpl>
    implements _$$AuctionDeclineWriteImplCopyWith<$Res> {
  __$$AuctionDeclineWriteImplCopyWithImpl(
    _$AuctionDeclineWriteImpl _value,
    $Res Function(_$AuctionDeclineWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionDeclineWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reasonCode = null, Object? reason = freezed}) {
    return _then(
      _$AuctionDeclineWriteImpl(
        reasonCode: null == reasonCode
            ? _value.reasonCode
            : reasonCode // ignore: cast_nullable_to_non_nullable
                  as AuctionDeclineWriteReasonCode,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionDeclineWriteImpl implements _AuctionDeclineWrite {
  const _$AuctionDeclineWriteImpl({required this.reasonCode, this.reason});

  factory _$AuctionDeclineWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionDeclineWriteImplFromJson(json);

  @override
  final AuctionDeclineWriteReasonCode reasonCode;
  @override
  final String? reason;

  @override
  String toString() {
    return 'AuctionDeclineWrite(reasonCode: $reasonCode, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionDeclineWriteImpl &&
            (identical(other.reasonCode, reasonCode) ||
                other.reasonCode == reasonCode) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reasonCode, reason);

  /// Create a copy of AuctionDeclineWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionDeclineWriteImplCopyWith<_$AuctionDeclineWriteImpl> get copyWith =>
      __$$AuctionDeclineWriteImplCopyWithImpl<_$AuctionDeclineWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionDeclineWriteImplToJson(this);
  }
}

abstract class _AuctionDeclineWrite implements AuctionDeclineWrite {
  const factory _AuctionDeclineWrite({
    required final AuctionDeclineWriteReasonCode reasonCode,
    final String? reason,
  }) = _$AuctionDeclineWriteImpl;

  factory _AuctionDeclineWrite.fromJson(Map<String, dynamic> json) =
      _$AuctionDeclineWriteImpl.fromJson;

  @override
  AuctionDeclineWriteReasonCode get reasonCode;
  @override
  String? get reason;

  /// Create a copy of AuctionDeclineWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionDeclineWriteImplCopyWith<_$AuctionDeclineWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
