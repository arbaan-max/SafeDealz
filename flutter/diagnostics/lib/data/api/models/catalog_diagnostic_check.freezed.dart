// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_diagnostic_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogDiagnosticCheck {

 String get id; String get label; String get group;
/// Create a copy of CatalogDiagnosticCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogDiagnosticCheckCopyWith<CatalogDiagnosticCheck> get copyWith => _$CatalogDiagnosticCheckCopyWithImpl<CatalogDiagnosticCheck>(this as CatalogDiagnosticCheck, _$identity);

  /// Serializes this CatalogDiagnosticCheck to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogDiagnosticCheck&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,group);

@override
String toString() {
  return 'CatalogDiagnosticCheck(id: $id, label: $label, group: $group)';
}


}

/// @nodoc
abstract mixin class $CatalogDiagnosticCheckCopyWith<$Res>  {
  factory $CatalogDiagnosticCheckCopyWith(CatalogDiagnosticCheck value, $Res Function(CatalogDiagnosticCheck) _then) = _$CatalogDiagnosticCheckCopyWithImpl;
@useResult
$Res call({
 String id, String label, String group
});




}
/// @nodoc
class _$CatalogDiagnosticCheckCopyWithImpl<$Res>
    implements $CatalogDiagnosticCheckCopyWith<$Res> {
  _$CatalogDiagnosticCheckCopyWithImpl(this._self, this._then);

  final CatalogDiagnosticCheck _self;
  final $Res Function(CatalogDiagnosticCheck) _then;

/// Create a copy of CatalogDiagnosticCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? group = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogDiagnosticCheck].
extension CatalogDiagnosticCheckPatterns on CatalogDiagnosticCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogDiagnosticCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogDiagnosticCheck value)  $default,){
final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogDiagnosticCheck value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck() when $default != null:
return $default(_that.id,_that.label,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String group)  $default,) {final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck():
return $default(_that.id,_that.label,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String group)?  $default,) {final _that = this;
switch (_that) {
case _CatalogDiagnosticCheck() when $default != null:
return $default(_that.id,_that.label,_that.group);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogDiagnosticCheck implements CatalogDiagnosticCheck {
  const _CatalogDiagnosticCheck({required this.id, required this.label, required this.group});
  factory _CatalogDiagnosticCheck.fromJson(Map<String, dynamic> json) => _$CatalogDiagnosticCheckFromJson(json);

@override final  String id;
@override final  String label;
@override final  String group;

/// Create a copy of CatalogDiagnosticCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogDiagnosticCheckCopyWith<_CatalogDiagnosticCheck> get copyWith => __$CatalogDiagnosticCheckCopyWithImpl<_CatalogDiagnosticCheck>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogDiagnosticCheckToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogDiagnosticCheck&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,group);

@override
String toString() {
  return 'CatalogDiagnosticCheck(id: $id, label: $label, group: $group)';
}


}

/// @nodoc
abstract mixin class _$CatalogDiagnosticCheckCopyWith<$Res> implements $CatalogDiagnosticCheckCopyWith<$Res> {
  factory _$CatalogDiagnosticCheckCopyWith(_CatalogDiagnosticCheck value, $Res Function(_CatalogDiagnosticCheck) _then) = __$CatalogDiagnosticCheckCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String group
});




}
/// @nodoc
class __$CatalogDiagnosticCheckCopyWithImpl<$Res>
    implements _$CatalogDiagnosticCheckCopyWith<$Res> {
  __$CatalogDiagnosticCheckCopyWithImpl(this._self, this._then);

  final _CatalogDiagnosticCheck _self;
  final $Res Function(_CatalogDiagnosticCheck) _then;

/// Create a copy of CatalogDiagnosticCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? group = null,}) {
  return _then(_CatalogDiagnosticCheck(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
