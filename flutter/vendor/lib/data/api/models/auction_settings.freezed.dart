// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionSettings {

 int get biddingMinutes; int get acceptanceMinutes;
/// Create a copy of AuctionSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSettingsCopyWith<AuctionSettings> get copyWith => _$AuctionSettingsCopyWithImpl<AuctionSettings>(this as AuctionSettings, _$identity);

  /// Serializes this AuctionSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSettings&&(identical(other.biddingMinutes, biddingMinutes) || other.biddingMinutes == biddingMinutes)&&(identical(other.acceptanceMinutes, acceptanceMinutes) || other.acceptanceMinutes == acceptanceMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,biddingMinutes,acceptanceMinutes);

@override
String toString() {
  return 'AuctionSettings(biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes)';
}


}

/// @nodoc
abstract mixin class $AuctionSettingsCopyWith<$Res>  {
  factory $AuctionSettingsCopyWith(AuctionSettings value, $Res Function(AuctionSettings) _then) = _$AuctionSettingsCopyWithImpl;
@useResult
$Res call({
 int biddingMinutes, int acceptanceMinutes
});




}
/// @nodoc
class _$AuctionSettingsCopyWithImpl<$Res>
    implements $AuctionSettingsCopyWith<$Res> {
  _$AuctionSettingsCopyWithImpl(this._self, this._then);

  final AuctionSettings _self;
  final $Res Function(AuctionSettings) _then;

/// Create a copy of AuctionSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? biddingMinutes = null,Object? acceptanceMinutes = null,}) {
  return _then(_self.copyWith(
biddingMinutes: null == biddingMinutes ? _self.biddingMinutes : biddingMinutes // ignore: cast_nullable_to_non_nullable
as int,acceptanceMinutes: null == acceptanceMinutes ? _self.acceptanceMinutes : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionSettings].
extension AuctionSettingsPatterns on AuctionSettings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSettings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSettings value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSettings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int biddingMinutes,  int acceptanceMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSettings() when $default != null:
return $default(_that.biddingMinutes,_that.acceptanceMinutes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int biddingMinutes,  int acceptanceMinutes)  $default,) {final _that = this;
switch (_that) {
case _AuctionSettings():
return $default(_that.biddingMinutes,_that.acceptanceMinutes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int biddingMinutes,  int acceptanceMinutes)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSettings() when $default != null:
return $default(_that.biddingMinutes,_that.acceptanceMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSettings implements AuctionSettings {
  const _AuctionSettings({required this.biddingMinutes, required this.acceptanceMinutes});
  factory _AuctionSettings.fromJson(Map<String, dynamic> json) => _$AuctionSettingsFromJson(json);

@override final  int biddingMinutes;
@override final  int acceptanceMinutes;

/// Create a copy of AuctionSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSettingsCopyWith<_AuctionSettings> get copyWith => __$AuctionSettingsCopyWithImpl<_AuctionSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSettings&&(identical(other.biddingMinutes, biddingMinutes) || other.biddingMinutes == biddingMinutes)&&(identical(other.acceptanceMinutes, acceptanceMinutes) || other.acceptanceMinutes == acceptanceMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,biddingMinutes,acceptanceMinutes);

@override
String toString() {
  return 'AuctionSettings(biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes)';
}


}

/// @nodoc
abstract mixin class _$AuctionSettingsCopyWith<$Res> implements $AuctionSettingsCopyWith<$Res> {
  factory _$AuctionSettingsCopyWith(_AuctionSettings value, $Res Function(_AuctionSettings) _then) = __$AuctionSettingsCopyWithImpl;
@override @useResult
$Res call({
 int biddingMinutes, int acceptanceMinutes
});




}
/// @nodoc
class __$AuctionSettingsCopyWithImpl<$Res>
    implements _$AuctionSettingsCopyWith<$Res> {
  __$AuctionSettingsCopyWithImpl(this._self, this._then);

  final _AuctionSettings _self;
  final $Res Function(_AuctionSettings) _then;

/// Create a copy of AuctionSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? biddingMinutes = null,Object? acceptanceMinutes = null,}) {
  return _then(_AuctionSettings(
biddingMinutes: null == biddingMinutes ? _self.biddingMinutes : biddingMinutes // ignore: cast_nullable_to_non_nullable
as int,acceptanceMinutes: null == acceptanceMinutes ? _self.acceptanceMinutes : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
