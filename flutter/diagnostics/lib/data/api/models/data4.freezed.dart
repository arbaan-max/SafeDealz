// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data4 {

 RewardPolicy? get current; List<RewardPolicy>? get versions;
/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data4CopyWith<Data4> get copyWith => _$Data4CopyWithImpl<Data4>(this as Data4, _$identity);

  /// Serializes this Data4 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data4&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other.versions, versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(versions));

@override
String toString() {
  return 'Data4(current: $current, versions: $versions)';
}


}

/// @nodoc
abstract mixin class $Data4CopyWith<$Res>  {
  factory $Data4CopyWith(Data4 value, $Res Function(Data4) _then) = _$Data4CopyWithImpl;
@useResult
$Res call({
 RewardPolicy? current, List<RewardPolicy>? versions
});


$RewardPolicyCopyWith<$Res>? get current;

}
/// @nodoc
class _$Data4CopyWithImpl<$Res>
    implements $Data4CopyWith<$Res> {
  _$Data4CopyWithImpl(this._self, this._then);

  final Data4 _self;
  final $Res Function(Data4) _then;

/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = freezed,Object? versions = freezed,}) {
  return _then(_self.copyWith(
current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as RewardPolicy?,versions: freezed == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<RewardPolicy>?,
  ));
}
/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardPolicyCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $RewardPolicyCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data4].
extension Data4Patterns on Data4 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data4 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data4() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data4 value)  $default,){
final _that = this;
switch (_that) {
case _Data4():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data4 value)?  $default,){
final _that = this;
switch (_that) {
case _Data4() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RewardPolicy? current,  List<RewardPolicy>? versions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data4() when $default != null:
return $default(_that.current,_that.versions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RewardPolicy? current,  List<RewardPolicy>? versions)  $default,) {final _that = this;
switch (_that) {
case _Data4():
return $default(_that.current,_that.versions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RewardPolicy? current,  List<RewardPolicy>? versions)?  $default,) {final _that = this;
switch (_that) {
case _Data4() when $default != null:
return $default(_that.current,_that.versions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data4 implements Data4 {
  const _Data4({this.current, final  List<RewardPolicy>? versions}): _versions = versions;
  factory _Data4.fromJson(Map<String, dynamic> json) => _$Data4FromJson(json);

@override final  RewardPolicy? current;
 final  List<RewardPolicy>? _versions;
@override List<RewardPolicy>? get versions {
  final value = _versions;
  if (value == null) return null;
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data4CopyWith<_Data4> get copyWith => __$Data4CopyWithImpl<_Data4>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data4ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data4&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other._versions, _versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(_versions));

@override
String toString() {
  return 'Data4(current: $current, versions: $versions)';
}


}

/// @nodoc
abstract mixin class _$Data4CopyWith<$Res> implements $Data4CopyWith<$Res> {
  factory _$Data4CopyWith(_Data4 value, $Res Function(_Data4) _then) = __$Data4CopyWithImpl;
@override @useResult
$Res call({
 RewardPolicy? current, List<RewardPolicy>? versions
});


@override $RewardPolicyCopyWith<$Res>? get current;

}
/// @nodoc
class __$Data4CopyWithImpl<$Res>
    implements _$Data4CopyWith<$Res> {
  __$Data4CopyWithImpl(this._self, this._then);

  final _Data4 _self;
  final $Res Function(_Data4) _then;

/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = freezed,Object? versions = freezed,}) {
  return _then(_Data4(
current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as RewardPolicy?,versions: freezed == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<RewardPolicy>?,
  ));
}

/// Create a copy of Data4
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardPolicyCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $RewardPolicyCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

// dart format on
