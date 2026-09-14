// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_settings_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionSettingsWrite _$AuctionSettingsWriteFromJson(Map<String, dynamic> json) {
  return _AuctionSettingsWrite.fromJson(json);
}

/// @nodoc
mixin _$AuctionSettingsWrite {
  int get biddingMinutes => throw _privateConstructorUsedError;
  int get acceptanceMinutes => throw _privateConstructorUsedError;

  /// Serializes this AuctionSettingsWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionSettingsWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionSettingsWriteCopyWith<AuctionSettingsWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionSettingsWriteCopyWith<$Res> {
  factory $AuctionSettingsWriteCopyWith(
    AuctionSettingsWrite value,
    $Res Function(AuctionSettingsWrite) then,
  ) = _$AuctionSettingsWriteCopyWithImpl<$Res, AuctionSettingsWrite>;
  @useResult
  $Res call({int biddingMinutes, int acceptanceMinutes});
}

/// @nodoc
class _$AuctionSettingsWriteCopyWithImpl<
  $Res,
  $Val extends AuctionSettingsWrite
>
    implements $AuctionSettingsWriteCopyWith<$Res> {
  _$AuctionSettingsWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionSettingsWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? biddingMinutes = null, Object? acceptanceMinutes = null}) {
    return _then(
      _value.copyWith(
            biddingMinutes: null == biddingMinutes
                ? _value.biddingMinutes
                : biddingMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            acceptanceMinutes: null == acceptanceMinutes
                ? _value.acceptanceMinutes
                : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionSettingsWriteImplCopyWith<$Res>
    implements $AuctionSettingsWriteCopyWith<$Res> {
  factory _$$AuctionSettingsWriteImplCopyWith(
    _$AuctionSettingsWriteImpl value,
    $Res Function(_$AuctionSettingsWriteImpl) then,
  ) = __$$AuctionSettingsWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int biddingMinutes, int acceptanceMinutes});
}

/// @nodoc
class __$$AuctionSettingsWriteImplCopyWithImpl<$Res>
    extends _$AuctionSettingsWriteCopyWithImpl<$Res, _$AuctionSettingsWriteImpl>
    implements _$$AuctionSettingsWriteImplCopyWith<$Res> {
  __$$AuctionSettingsWriteImplCopyWithImpl(
    _$AuctionSettingsWriteImpl _value,
    $Res Function(_$AuctionSettingsWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionSettingsWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? biddingMinutes = null, Object? acceptanceMinutes = null}) {
    return _then(
      _$AuctionSettingsWriteImpl(
        biddingMinutes: null == biddingMinutes
            ? _value.biddingMinutes
            : biddingMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        acceptanceMinutes: null == acceptanceMinutes
            ? _value.acceptanceMinutes
            : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionSettingsWriteImpl implements _AuctionSettingsWrite {
  const _$AuctionSettingsWriteImpl({
    required this.biddingMinutes,
    required this.acceptanceMinutes,
  });

  factory _$AuctionSettingsWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionSettingsWriteImplFromJson(json);

  @override
  final int biddingMinutes;
  @override
  final int acceptanceMinutes;

  @override
  String toString() {
    return 'AuctionSettingsWrite(biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionSettingsWriteImpl &&
            (identical(other.biddingMinutes, biddingMinutes) ||
                other.biddingMinutes == biddingMinutes) &&
            (identical(other.acceptanceMinutes, acceptanceMinutes) ||
                other.acceptanceMinutes == acceptanceMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, biddingMinutes, acceptanceMinutes);

  /// Create a copy of AuctionSettingsWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionSettingsWriteImplCopyWith<_$AuctionSettingsWriteImpl>
  get copyWith =>
      __$$AuctionSettingsWriteImplCopyWithImpl<_$AuctionSettingsWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionSettingsWriteImplToJson(this);
  }
}

abstract class _AuctionSettingsWrite implements AuctionSettingsWrite {
  const factory _AuctionSettingsWrite({
    required final int biddingMinutes,
    required final int acceptanceMinutes,
  }) = _$AuctionSettingsWriteImpl;

  factory _AuctionSettingsWrite.fromJson(Map<String, dynamic> json) =
      _$AuctionSettingsWriteImpl.fromJson;

  @override
  int get biddingMinutes;
  @override
  int get acceptanceMinutes;

  /// Create a copy of AuctionSettingsWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionSettingsWriteImplCopyWith<_$AuctionSettingsWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
