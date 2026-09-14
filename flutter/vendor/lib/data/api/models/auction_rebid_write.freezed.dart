// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_rebid_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionRebidWrite _$AuctionRebidWriteFromJson(Map<String, dynamic> json) {
  return _AuctionRebidWrite.fromJson(json);
}

/// @nodoc
mixin _$AuctionRebidWrite {
  int get expectedAmountPaise => throw _privateConstructorUsedError;

  /// Serializes this AuctionRebidWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionRebidWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionRebidWriteCopyWith<AuctionRebidWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionRebidWriteCopyWith<$Res> {
  factory $AuctionRebidWriteCopyWith(
    AuctionRebidWrite value,
    $Res Function(AuctionRebidWrite) then,
  ) = _$AuctionRebidWriteCopyWithImpl<$Res, AuctionRebidWrite>;
  @useResult
  $Res call({int expectedAmountPaise});
}

/// @nodoc
class _$AuctionRebidWriteCopyWithImpl<$Res, $Val extends AuctionRebidWrite>
    implements $AuctionRebidWriteCopyWith<$Res> {
  _$AuctionRebidWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionRebidWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expectedAmountPaise = null}) {
    return _then(
      _value.copyWith(
            expectedAmountPaise: null == expectedAmountPaise
                ? _value.expectedAmountPaise
                : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionRebidWriteImplCopyWith<$Res>
    implements $AuctionRebidWriteCopyWith<$Res> {
  factory _$$AuctionRebidWriteImplCopyWith(
    _$AuctionRebidWriteImpl value,
    $Res Function(_$AuctionRebidWriteImpl) then,
  ) = __$$AuctionRebidWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int expectedAmountPaise});
}

/// @nodoc
class __$$AuctionRebidWriteImplCopyWithImpl<$Res>
    extends _$AuctionRebidWriteCopyWithImpl<$Res, _$AuctionRebidWriteImpl>
    implements _$$AuctionRebidWriteImplCopyWith<$Res> {
  __$$AuctionRebidWriteImplCopyWithImpl(
    _$AuctionRebidWriteImpl _value,
    $Res Function(_$AuctionRebidWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionRebidWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expectedAmountPaise = null}) {
    return _then(
      _$AuctionRebidWriteImpl(
        expectedAmountPaise: null == expectedAmountPaise
            ? _value.expectedAmountPaise
            : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionRebidWriteImpl implements _AuctionRebidWrite {
  const _$AuctionRebidWriteImpl({required this.expectedAmountPaise});

  factory _$AuctionRebidWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionRebidWriteImplFromJson(json);

  @override
  final int expectedAmountPaise;

  @override
  String toString() {
    return 'AuctionRebidWrite(expectedAmountPaise: $expectedAmountPaise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionRebidWriteImpl &&
            (identical(other.expectedAmountPaise, expectedAmountPaise) ||
                other.expectedAmountPaise == expectedAmountPaise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expectedAmountPaise);

  /// Create a copy of AuctionRebidWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionRebidWriteImplCopyWith<_$AuctionRebidWriteImpl> get copyWith =>
      __$$AuctionRebidWriteImplCopyWithImpl<_$AuctionRebidWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionRebidWriteImplToJson(this);
  }
}

abstract class _AuctionRebidWrite implements AuctionRebidWrite {
  const factory _AuctionRebidWrite({required final int expectedAmountPaise}) =
      _$AuctionRebidWriteImpl;

  factory _AuctionRebidWrite.fromJson(Map<String, dynamic> json) =
      _$AuctionRebidWriteImpl.fromJson;

  @override
  int get expectedAmountPaise;

  /// Create a copy of AuctionRebidWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionRebidWriteImplCopyWith<_$AuctionRebidWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
