// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Catalog {

 String get version; List<String> get storages; List<String> get rams; List<String> get platforms; String get billAgeExemptOption; List<CatalogField> get inspectionFields; List<CatalogStep> get inspectionSteps; List<CatalogEvidence> get evidence; List<CatalogDiagnosticCheck> get diagnosticChecks;
/// Create a copy of Catalog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogCopyWith<Catalog> get copyWith => _$CatalogCopyWithImpl<Catalog>(this as Catalog, _$identity);

  /// Serializes this Catalog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Catalog&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.storages, storages)&&const DeepCollectionEquality().equals(other.rams, rams)&&const DeepCollectionEquality().equals(other.platforms, platforms)&&(identical(other.billAgeExemptOption, billAgeExemptOption) || other.billAgeExemptOption == billAgeExemptOption)&&const DeepCollectionEquality().equals(other.inspectionFields, inspectionFields)&&const DeepCollectionEquality().equals(other.inspectionSteps, inspectionSteps)&&const DeepCollectionEquality().equals(other.evidence, evidence)&&const DeepCollectionEquality().equals(other.diagnosticChecks, diagnosticChecks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(storages),const DeepCollectionEquality().hash(rams),const DeepCollectionEquality().hash(platforms),billAgeExemptOption,const DeepCollectionEquality().hash(inspectionFields),const DeepCollectionEquality().hash(inspectionSteps),const DeepCollectionEquality().hash(evidence),const DeepCollectionEquality().hash(diagnosticChecks));

@override
String toString() {
  return 'Catalog(version: $version, storages: $storages, rams: $rams, platforms: $platforms, billAgeExemptOption: $billAgeExemptOption, inspectionFields: $inspectionFields, inspectionSteps: $inspectionSteps, evidence: $evidence, diagnosticChecks: $diagnosticChecks)';
}


}

/// @nodoc
abstract mixin class $CatalogCopyWith<$Res>  {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) _then) = _$CatalogCopyWithImpl;
@useResult
$Res call({
 String version, List<String> storages, List<String> rams, List<String> platforms, String billAgeExemptOption, List<CatalogField> inspectionFields, List<CatalogStep> inspectionSteps, List<CatalogEvidence> evidence, List<CatalogDiagnosticCheck> diagnosticChecks
});




}
/// @nodoc
class _$CatalogCopyWithImpl<$Res>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._self, this._then);

  final Catalog _self;
  final $Res Function(Catalog) _then;

/// Create a copy of Catalog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? storages = null,Object? rams = null,Object? platforms = null,Object? billAgeExemptOption = null,Object? inspectionFields = null,Object? inspectionSteps = null,Object? evidence = null,Object? diagnosticChecks = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,storages: null == storages ? _self.storages : storages // ignore: cast_nullable_to_non_nullable
as List<String>,rams: null == rams ? _self.rams : rams // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,billAgeExemptOption: null == billAgeExemptOption ? _self.billAgeExemptOption : billAgeExemptOption // ignore: cast_nullable_to_non_nullable
as String,inspectionFields: null == inspectionFields ? _self.inspectionFields : inspectionFields // ignore: cast_nullable_to_non_nullable
as List<CatalogField>,inspectionSteps: null == inspectionSteps ? _self.inspectionSteps : inspectionSteps // ignore: cast_nullable_to_non_nullable
as List<CatalogStep>,evidence: null == evidence ? _self.evidence : evidence // ignore: cast_nullable_to_non_nullable
as List<CatalogEvidence>,diagnosticChecks: null == diagnosticChecks ? _self.diagnosticChecks : diagnosticChecks // ignore: cast_nullable_to_non_nullable
as List<CatalogDiagnosticCheck>,
  ));
}

}


/// Adds pattern-matching-related methods to [Catalog].
extension CatalogPatterns on Catalog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Catalog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Catalog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Catalog value)  $default,){
final _that = this;
switch (_that) {
case _Catalog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Catalog value)?  $default,){
final _that = this;
switch (_that) {
case _Catalog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  List<String> storages,  List<String> rams,  List<String> platforms,  String billAgeExemptOption,  List<CatalogField> inspectionFields,  List<CatalogStep> inspectionSteps,  List<CatalogEvidence> evidence,  List<CatalogDiagnosticCheck> diagnosticChecks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Catalog() when $default != null:
return $default(_that.version,_that.storages,_that.rams,_that.platforms,_that.billAgeExemptOption,_that.inspectionFields,_that.inspectionSteps,_that.evidence,_that.diagnosticChecks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  List<String> storages,  List<String> rams,  List<String> platforms,  String billAgeExemptOption,  List<CatalogField> inspectionFields,  List<CatalogStep> inspectionSteps,  List<CatalogEvidence> evidence,  List<CatalogDiagnosticCheck> diagnosticChecks)  $default,) {final _that = this;
switch (_that) {
case _Catalog():
return $default(_that.version,_that.storages,_that.rams,_that.platforms,_that.billAgeExemptOption,_that.inspectionFields,_that.inspectionSteps,_that.evidence,_that.diagnosticChecks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  List<String> storages,  List<String> rams,  List<String> platforms,  String billAgeExemptOption,  List<CatalogField> inspectionFields,  List<CatalogStep> inspectionSteps,  List<CatalogEvidence> evidence,  List<CatalogDiagnosticCheck> diagnosticChecks)?  $default,) {final _that = this;
switch (_that) {
case _Catalog() when $default != null:
return $default(_that.version,_that.storages,_that.rams,_that.platforms,_that.billAgeExemptOption,_that.inspectionFields,_that.inspectionSteps,_that.evidence,_that.diagnosticChecks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Catalog implements Catalog {
  const _Catalog({required this.version, required final  List<String> storages, required final  List<String> rams, required final  List<String> platforms, required this.billAgeExemptOption, required final  List<CatalogField> inspectionFields, required final  List<CatalogStep> inspectionSteps, required final  List<CatalogEvidence> evidence, required final  List<CatalogDiagnosticCheck> diagnosticChecks}): _storages = storages,_rams = rams,_platforms = platforms,_inspectionFields = inspectionFields,_inspectionSteps = inspectionSteps,_evidence = evidence,_diagnosticChecks = diagnosticChecks;
  factory _Catalog.fromJson(Map<String, dynamic> json) => _$CatalogFromJson(json);

@override final  String version;
 final  List<String> _storages;
@override List<String> get storages {
  if (_storages is EqualUnmodifiableListView) return _storages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_storages);
}

 final  List<String> _rams;
@override List<String> get rams {
  if (_rams is EqualUnmodifiableListView) return _rams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rams);
}

 final  List<String> _platforms;
@override List<String> get platforms {
  if (_platforms is EqualUnmodifiableListView) return _platforms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_platforms);
}

@override final  String billAgeExemptOption;
 final  List<CatalogField> _inspectionFields;
@override List<CatalogField> get inspectionFields {
  if (_inspectionFields is EqualUnmodifiableListView) return _inspectionFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectionFields);
}

 final  List<CatalogStep> _inspectionSteps;
@override List<CatalogStep> get inspectionSteps {
  if (_inspectionSteps is EqualUnmodifiableListView) return _inspectionSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inspectionSteps);
}

 final  List<CatalogEvidence> _evidence;
@override List<CatalogEvidence> get evidence {
  if (_evidence is EqualUnmodifiableListView) return _evidence;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidence);
}

 final  List<CatalogDiagnosticCheck> _diagnosticChecks;
@override List<CatalogDiagnosticCheck> get diagnosticChecks {
  if (_diagnosticChecks is EqualUnmodifiableListView) return _diagnosticChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnosticChecks);
}


/// Create a copy of Catalog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogCopyWith<_Catalog> get copyWith => __$CatalogCopyWithImpl<_Catalog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Catalog&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._storages, _storages)&&const DeepCollectionEquality().equals(other._rams, _rams)&&const DeepCollectionEquality().equals(other._platforms, _platforms)&&(identical(other.billAgeExemptOption, billAgeExemptOption) || other.billAgeExemptOption == billAgeExemptOption)&&const DeepCollectionEquality().equals(other._inspectionFields, _inspectionFields)&&const DeepCollectionEquality().equals(other._inspectionSteps, _inspectionSteps)&&const DeepCollectionEquality().equals(other._evidence, _evidence)&&const DeepCollectionEquality().equals(other._diagnosticChecks, _diagnosticChecks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(_storages),const DeepCollectionEquality().hash(_rams),const DeepCollectionEquality().hash(_platforms),billAgeExemptOption,const DeepCollectionEquality().hash(_inspectionFields),const DeepCollectionEquality().hash(_inspectionSteps),const DeepCollectionEquality().hash(_evidence),const DeepCollectionEquality().hash(_diagnosticChecks));

@override
String toString() {
  return 'Catalog(version: $version, storages: $storages, rams: $rams, platforms: $platforms, billAgeExemptOption: $billAgeExemptOption, inspectionFields: $inspectionFields, inspectionSteps: $inspectionSteps, evidence: $evidence, diagnosticChecks: $diagnosticChecks)';
}


}

/// @nodoc
abstract mixin class _$CatalogCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$CatalogCopyWith(_Catalog value, $Res Function(_Catalog) _then) = __$CatalogCopyWithImpl;
@override @useResult
$Res call({
 String version, List<String> storages, List<String> rams, List<String> platforms, String billAgeExemptOption, List<CatalogField> inspectionFields, List<CatalogStep> inspectionSteps, List<CatalogEvidence> evidence, List<CatalogDiagnosticCheck> diagnosticChecks
});




}
/// @nodoc
class __$CatalogCopyWithImpl<$Res>
    implements _$CatalogCopyWith<$Res> {
  __$CatalogCopyWithImpl(this._self, this._then);

  final _Catalog _self;
  final $Res Function(_Catalog) _then;

/// Create a copy of Catalog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? storages = null,Object? rams = null,Object? platforms = null,Object? billAgeExemptOption = null,Object? inspectionFields = null,Object? inspectionSteps = null,Object? evidence = null,Object? diagnosticChecks = null,}) {
  return _then(_Catalog(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,storages: null == storages ? _self._storages : storages // ignore: cast_nullable_to_non_nullable
as List<String>,rams: null == rams ? _self._rams : rams // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self._platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,billAgeExemptOption: null == billAgeExemptOption ? _self.billAgeExemptOption : billAgeExemptOption // ignore: cast_nullable_to_non_nullable
as String,inspectionFields: null == inspectionFields ? _self._inspectionFields : inspectionFields // ignore: cast_nullable_to_non_nullable
as List<CatalogField>,inspectionSteps: null == inspectionSteps ? _self._inspectionSteps : inspectionSteps // ignore: cast_nullable_to_non_nullable
as List<CatalogStep>,evidence: null == evidence ? _self._evidence : evidence // ignore: cast_nullable_to_non_nullable
as List<CatalogEvidence>,diagnosticChecks: null == diagnosticChecks ? _self._diagnosticChecks : diagnosticChecks // ignore: cast_nullable_to_non_nullable
as List<CatalogDiagnosticCheck>,
  ));
}


}

// dart format on
