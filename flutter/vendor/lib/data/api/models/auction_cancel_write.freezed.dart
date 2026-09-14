// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_cancel_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionCancelWrite _$AuctionCancelWriteFromJson(Map<String, dynamic> json) {
  return _AuctionCancelWrite.fromJson(json);
}

/// @nodoc
mixin _$AuctionCancelWrite {
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this AuctionCancelWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionCancelWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionCancelWriteCopyWith<AuctionCancelWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionCancelWriteCopyWith<$Res> {
  factory $AuctionCancelWriteCopyWith(
    AuctionCancelWrite value,
    $Res Function(AuctionCancelWrite) then,
  ) = _$AuctionCancelWriteCopyWithImpl<$Res, AuctionCancelWrite>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$AuctionCancelWriteCopyWithImpl<$Res, $Val extends AuctionCancelWrite>
    implements $AuctionCancelWriteCopyWith<$Res> {
  _$AuctionCancelWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionCancelWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _value.copyWith(
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionCancelWriteImplCopyWith<$Res>
    implements $AuctionCancelWriteCopyWith<$Res> {
  factory _$$AuctionCancelWriteImplCopyWith(
    _$AuctionCancelWriteImpl value,
    $Res Function(_$AuctionCancelWriteImpl) then,
  ) = __$$AuctionCancelWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$AuctionCancelWriteImplCopyWithImpl<$Res>
    extends _$AuctionCancelWriteCopyWithImpl<$Res, _$AuctionCancelWriteImpl>
    implements _$$AuctionCancelWriteImplCopyWith<$Res> {
  __$$AuctionCancelWriteImplCopyWithImpl(
    _$AuctionCancelWriteImpl _value,
    $Res Function(_$AuctionCancelWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionCancelWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$AuctionCancelWriteImpl(
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionCancelWriteImpl implements _AuctionCancelWrite {
  const _$AuctionCancelWriteImpl({required this.reason});

  factory _$AuctionCancelWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionCancelWriteImplFromJson(json);

  @override
  final String reason;

  @override
  String toString() {
    return 'AuctionCancelWrite(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionCancelWriteImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of AuctionCancelWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionCancelWriteImplCopyWith<_$AuctionCancelWriteImpl> get copyWith =>
      __$$AuctionCancelWriteImplCopyWithImpl<_$AuctionCancelWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionCancelWriteImplToJson(this);
  }
}

abstract class _AuctionCancelWrite implements AuctionCancelWrite {
  const factory _AuctionCancelWrite({required final String reason}) =
      _$AuctionCancelWriteImpl;

  factory _AuctionCancelWrite.fromJson(Map<String, dynamic> json) =
      _$AuctionCancelWriteImpl.fromJson;

  @override
  String get reason;

  /// Create a copy of AuctionCancelWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionCancelWriteImplCopyWith<_$AuctionCancelWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
