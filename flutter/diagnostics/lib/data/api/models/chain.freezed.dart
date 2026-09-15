// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Chain {

 String get id; String get name; String get code; bool get active; String? get contactName; String? get contactEmail; String? get contactPhone; int? get branchCount;
/// Create a copy of Chain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainCopyWith<Chain> get copyWith => _$ChainCopyWithImpl<Chain>(this as Chain, _$identity);

  /// Serializes this Chain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chain&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.branchCount, branchCount) || other.branchCount == branchCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,active,contactName,contactEmail,contactPhone,branchCount);

@override
String toString() {
  return 'Chain(id: $id, name: $name, code: $code, active: $active, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, branchCount: $branchCount)';
}


}

/// @nodoc
abstract mixin class $ChainCopyWith<$Res>  {
  factory $ChainCopyWith(Chain value, $Res Function(Chain) _then) = _$ChainCopyWithImpl;
@useResult
$Res call({
 String id, String name, String code, bool active, String? contactName, String? contactEmail, String? contactPhone, int? branchCount
});




}
/// @nodoc
class _$ChainCopyWithImpl<$Res>
    implements $ChainCopyWith<$Res> {
  _$ChainCopyWithImpl(this._self, this._then);

  final Chain _self;
  final $Res Function(Chain) _then;

/// Create a copy of Chain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? branchCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,branchCount: freezed == branchCount ? _self.branchCount : branchCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Chain].
extension ChainPatterns on Chain {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chain() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chain value)  $default,){
final _that = this;
switch (_that) {
case _Chain():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chain value)?  $default,){
final _that = this;
switch (_that) {
case _Chain() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  String? contactName,  String? contactEmail,  String? contactPhone,  int? branchCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chain() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.contactName,_that.contactEmail,_that.contactPhone,_that.branchCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  String? contactName,  String? contactEmail,  String? contactPhone,  int? branchCount)  $default,) {final _that = this;
switch (_that) {
case _Chain():
return $default(_that.id,_that.name,_that.code,_that.active,_that.contactName,_that.contactEmail,_that.contactPhone,_that.branchCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String code,  bool active,  String? contactName,  String? contactEmail,  String? contactPhone,  int? branchCount)?  $default,) {final _that = this;
switch (_that) {
case _Chain() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.contactName,_that.contactEmail,_that.contactPhone,_that.branchCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chain implements Chain {
  const _Chain({required this.id, required this.name, required this.code, required this.active, this.contactName, this.contactEmail, this.contactPhone, this.branchCount});
  factory _Chain.fromJson(Map<String, dynamic> json) => _$ChainFromJson(json);

@override final  String id;
@override final  String name;
@override final  String code;
@override final  bool active;
@override final  String? contactName;
@override final  String? contactEmail;
@override final  String? contactPhone;
@override final  int? branchCount;

/// Create a copy of Chain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainCopyWith<_Chain> get copyWith => __$ChainCopyWithImpl<_Chain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chain&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.branchCount, branchCount) || other.branchCount == branchCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,active,contactName,contactEmail,contactPhone,branchCount);

@override
String toString() {
  return 'Chain(id: $id, name: $name, code: $code, active: $active, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, branchCount: $branchCount)';
}


}

/// @nodoc
abstract mixin class _$ChainCopyWith<$Res> implements $ChainCopyWith<$Res> {
  factory _$ChainCopyWith(_Chain value, $Res Function(_Chain) _then) = __$ChainCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String code, bool active, String? contactName, String? contactEmail, String? contactPhone, int? branchCount
});




}
/// @nodoc
class __$ChainCopyWithImpl<$Res>
    implements _$ChainCopyWith<$Res> {
  __$ChainCopyWithImpl(this._self, this._then);

  final _Chain _self;
  final $Res Function(_Chain) _then;

/// Create a copy of Chain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? branchCount = freezed,}) {
  return _then(_Chain(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,branchCount: freezed == branchCount ? _self.branchCount : branchCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
