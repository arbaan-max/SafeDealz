// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChainWrite {

 String? get name; String? get code; String? get contactName; String? get contactEmail; String? get contactPhone; bool? get active;
/// Create a copy of ChainWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainWriteCopyWith<ChainWrite> get copyWith => _$ChainWriteCopyWithImpl<ChainWrite>(this as ChainWrite, _$identity);

  /// Serializes this ChainWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainWrite&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,contactName,contactEmail,contactPhone,active);

@override
String toString() {
  return 'ChainWrite(name: $name, code: $code, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, active: $active)';
}


}

/// @nodoc
abstract mixin class $ChainWriteCopyWith<$Res>  {
  factory $ChainWriteCopyWith(ChainWrite value, $Res Function(ChainWrite) _then) = _$ChainWriteCopyWithImpl;
@useResult
$Res call({
 String? name, String? code, String? contactName, String? contactEmail, String? contactPhone, bool? active
});




}
/// @nodoc
class _$ChainWriteCopyWithImpl<$Res>
    implements $ChainWriteCopyWith<$Res> {
  _$ChainWriteCopyWithImpl(this._self, this._then);

  final ChainWrite _self;
  final $Res Function(ChainWrite) _then;

/// Create a copy of ChainWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? code = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChainWrite].
extension ChainWritePatterns on ChainWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainWrite value)  $default,){
final _that = this;
switch (_that) {
case _ChainWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainWrite value)?  $default,){
final _that = this;
switch (_that) {
case _ChainWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? code,  String? contactName,  String? contactEmail,  String? contactPhone,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainWrite() when $default != null:
return $default(_that.name,_that.code,_that.contactName,_that.contactEmail,_that.contactPhone,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? code,  String? contactName,  String? contactEmail,  String? contactPhone,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _ChainWrite():
return $default(_that.name,_that.code,_that.contactName,_that.contactEmail,_that.contactPhone,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? code,  String? contactName,  String? contactEmail,  String? contactPhone,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _ChainWrite() when $default != null:
return $default(_that.name,_that.code,_that.contactName,_that.contactEmail,_that.contactPhone,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChainWrite implements ChainWrite {
  const _ChainWrite({this.name, this.code, this.contactName, this.contactEmail, this.contactPhone, this.active});
  factory _ChainWrite.fromJson(Map<String, dynamic> json) => _$ChainWriteFromJson(json);

@override final  String? name;
@override final  String? code;
@override final  String? contactName;
@override final  String? contactEmail;
@override final  String? contactPhone;
@override final  bool? active;

/// Create a copy of ChainWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainWriteCopyWith<_ChainWrite> get copyWith => __$ChainWriteCopyWithImpl<_ChainWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainWrite&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,contactName,contactEmail,contactPhone,active);

@override
String toString() {
  return 'ChainWrite(name: $name, code: $code, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ChainWriteCopyWith<$Res> implements $ChainWriteCopyWith<$Res> {
  factory _$ChainWriteCopyWith(_ChainWrite value, $Res Function(_ChainWrite) _then) = __$ChainWriteCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? code, String? contactName, String? contactEmail, String? contactPhone, bool? active
});




}
/// @nodoc
class __$ChainWriteCopyWithImpl<$Res>
    implements _$ChainWriteCopyWith<$Res> {
  __$ChainWriteCopyWithImpl(this._self, this._then);

  final _ChainWrite _self;
  final $Res Function(_ChainWrite) _then;

/// Create a copy of ChainWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? code = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? active = freezed,}) {
  return _then(_ChainWrite(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
