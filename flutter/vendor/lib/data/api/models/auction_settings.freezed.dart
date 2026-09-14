// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionSettings _$AuctionSettingsFromJson(Map<String, dynamic> json) {
  return _AuctionSettings.fromJson(json);
}

/// @nodoc
mixin _$AuctionSettings {
  int get biddingMinutes => throw _privateConstructorUsedError;
  int get acceptanceMinutes => throw _privateConstructorUsedError;

  /// Serializes this AuctionSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionSettingsCopyWith<AuctionSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionSettingsCopyWith<$Res> {
  factory $AuctionSettingsCopyWith(
    AuctionSettings value,
    $Res Function(AuctionSettings) then,
  ) = _$AuctionSettingsCopyWithImpl<$Res, AuctionSettings>;
  @useResult
  $Res call({int biddingMinutes, int acceptanceMinutes});
}

/// @nodoc
class _$AuctionSettingsCopyWithImpl<$Res, $Val extends AuctionSettings>
    implements $AuctionSettingsCopyWith<$Res> {
  _$AuctionSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionSettings
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
abstract class _$$AuctionSettingsImplCopyWith<$Res>
    implements $AuctionSettingsCopyWith<$Res> {
  factory _$$AuctionSettingsImplCopyWith(
    _$AuctionSettingsImpl value,
    $Res Function(_$AuctionSettingsImpl) then,
  ) = __$$AuctionSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int biddingMinutes, int acceptanceMinutes});
}

/// @nodoc
class __$$AuctionSettingsImplCopyWithImpl<$Res>
    extends _$AuctionSettingsCopyWithImpl<$Res, _$AuctionSettingsImpl>
    implements _$$AuctionSettingsImplCopyWith<$Res> {
  __$$AuctionSettingsImplCopyWithImpl(
    _$AuctionSettingsImpl _value,
    $Res Function(_$AuctionSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? biddingMinutes = null, Object? acceptanceMinutes = null}) {
    return _then(
      _$AuctionSettingsImpl(
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
class _$AuctionSettingsImpl implements _AuctionSettings {
  const _$AuctionSettingsImpl({
    required this.biddingMinutes,
    required this.acceptanceMinutes,
  });

  factory _$AuctionSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionSettingsImplFromJson(json);

  @override
  final int biddingMinutes;
  @override
  final int acceptanceMinutes;

  @override
  String toString() {
    return 'AuctionSettings(biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionSettingsImpl &&
            (identical(other.biddingMinutes, biddingMinutes) ||
                other.biddingMinutes == biddingMinutes) &&
            (identical(other.acceptanceMinutes, acceptanceMinutes) ||
                other.acceptanceMinutes == acceptanceMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, biddingMinutes, acceptanceMinutes);

  /// Create a copy of AuctionSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionSettingsImplCopyWith<_$AuctionSettingsImpl> get copyWith =>
      __$$AuctionSettingsImplCopyWithImpl<_$AuctionSettingsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionSettingsImplToJson(this);
  }
}

abstract class _AuctionSettings implements AuctionSettings {
  const factory _AuctionSettings({
    required final int biddingMinutes,
    required final int acceptanceMinutes,
  }) = _$AuctionSettingsImpl;

  factory _AuctionSettings.fromJson(Map<String, dynamic> json) =
      _$AuctionSettingsImpl.fromJson;

  @override
  int get biddingMinutes;
  @override
  int get acceptanceMinutes;

  /// Create a copy of AuctionSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionSettingsImplCopyWith<_$AuctionSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
