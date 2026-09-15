// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportExport {

 String? get filename; String? get csv; DateTime? get generatedAt;
/// Create a copy of ReportExport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportExportCopyWith<ReportExport> get copyWith => _$ReportExportCopyWithImpl<ReportExport>(this as ReportExport, _$identity);

  /// Serializes this ReportExport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportExport&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.csv, csv) || other.csv == csv)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filename,csv,generatedAt);

@override
String toString() {
  return 'ReportExport(filename: $filename, csv: $csv, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class $ReportExportCopyWith<$Res>  {
  factory $ReportExportCopyWith(ReportExport value, $Res Function(ReportExport) _then) = _$ReportExportCopyWithImpl;
@useResult
$Res call({
 String? filename, String? csv, DateTime? generatedAt
});




}
/// @nodoc
class _$ReportExportCopyWithImpl<$Res>
    implements $ReportExportCopyWith<$Res> {
  _$ReportExportCopyWithImpl(this._self, this._then);

  final ReportExport _self;
  final $Res Function(ReportExport) _then;

/// Create a copy of ReportExport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filename = freezed,Object? csv = freezed,Object? generatedAt = freezed,}) {
  return _then(_self.copyWith(
filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,csv: freezed == csv ? _self.csv : csv // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportExport].
extension ReportExportPatterns on ReportExport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportExport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportExport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportExport value)  $default,){
final _that = this;
switch (_that) {
case _ReportExport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportExport value)?  $default,){
final _that = this;
switch (_that) {
case _ReportExport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? filename,  String? csv,  DateTime? generatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportExport() when $default != null:
return $default(_that.filename,_that.csv,_that.generatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? filename,  String? csv,  DateTime? generatedAt)  $default,) {final _that = this;
switch (_that) {
case _ReportExport():
return $default(_that.filename,_that.csv,_that.generatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? filename,  String? csv,  DateTime? generatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ReportExport() when $default != null:
return $default(_that.filename,_that.csv,_that.generatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportExport implements ReportExport {
  const _ReportExport({this.filename, this.csv, this.generatedAt});
  factory _ReportExport.fromJson(Map<String, dynamic> json) => _$ReportExportFromJson(json);

@override final  String? filename;
@override final  String? csv;
@override final  DateTime? generatedAt;

/// Create a copy of ReportExport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportExportCopyWith<_ReportExport> get copyWith => __$ReportExportCopyWithImpl<_ReportExport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportExportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportExport&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.csv, csv) || other.csv == csv)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filename,csv,generatedAt);

@override
String toString() {
  return 'ReportExport(filename: $filename, csv: $csv, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class _$ReportExportCopyWith<$Res> implements $ReportExportCopyWith<$Res> {
  factory _$ReportExportCopyWith(_ReportExport value, $Res Function(_ReportExport) _then) = __$ReportExportCopyWithImpl;
@override @useResult
$Res call({
 String? filename, String? csv, DateTime? generatedAt
});




}
/// @nodoc
class __$ReportExportCopyWithImpl<$Res>
    implements _$ReportExportCopyWith<$Res> {
  __$ReportExportCopyWithImpl(this._self, this._then);

  final _ReportExport _self;
  final $Res Function(_ReportExport) _then;

/// Create a copy of ReportExport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filename = freezed,Object? csv = freezed,Object? generatedAt = freezed,}) {
  return _then(_ReportExport(
filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,csv: freezed == csv ? _self.csv : csv // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
