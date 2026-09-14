// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Catalog _$CatalogFromJson(Map<String, dynamic> json) {
  return _Catalog.fromJson(json);
}

/// @nodoc
mixin _$Catalog {
  String get version => throw _privateConstructorUsedError;
  List<String> get storages => throw _privateConstructorUsedError;
  List<String> get rams => throw _privateConstructorUsedError;
  List<String> get platforms => throw _privateConstructorUsedError;
  String get billAgeExemptOption => throw _privateConstructorUsedError;
  List<CatalogField> get inspectionFields => throw _privateConstructorUsedError;
  List<CatalogStep> get inspectionSteps => throw _privateConstructorUsedError;
  List<CatalogEvidence> get evidence => throw _privateConstructorUsedError;
  List<CatalogDiagnosticCheck> get diagnosticChecks =>
      throw _privateConstructorUsedError;

  /// Serializes this Catalog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogCopyWith<Catalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCopyWith<$Res> {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) then) =
      _$CatalogCopyWithImpl<$Res, Catalog>;
  @useResult
  $Res call({
    String version,
    List<String> storages,
    List<String> rams,
    List<String> platforms,
    String billAgeExemptOption,
    List<CatalogField> inspectionFields,
    List<CatalogStep> inspectionSteps,
    List<CatalogEvidence> evidence,
    List<CatalogDiagnosticCheck> diagnosticChecks,
  });
}

/// @nodoc
class _$CatalogCopyWithImpl<$Res, $Val extends Catalog>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? storages = null,
    Object? rams = null,
    Object? platforms = null,
    Object? billAgeExemptOption = null,
    Object? inspectionFields = null,
    Object? inspectionSteps = null,
    Object? evidence = null,
    Object? diagnosticChecks = null,
  }) {
    return _then(
      _value.copyWith(
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            storages: null == storages
                ? _value.storages
                : storages // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            rams: null == rams
                ? _value.rams
                : rams // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            platforms: null == platforms
                ? _value.platforms
                : platforms // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            billAgeExemptOption: null == billAgeExemptOption
                ? _value.billAgeExemptOption
                : billAgeExemptOption // ignore: cast_nullable_to_non_nullable
                      as String,
            inspectionFields: null == inspectionFields
                ? _value.inspectionFields
                : inspectionFields // ignore: cast_nullable_to_non_nullable
                      as List<CatalogField>,
            inspectionSteps: null == inspectionSteps
                ? _value.inspectionSteps
                : inspectionSteps // ignore: cast_nullable_to_non_nullable
                      as List<CatalogStep>,
            evidence: null == evidence
                ? _value.evidence
                : evidence // ignore: cast_nullable_to_non_nullable
                      as List<CatalogEvidence>,
            diagnosticChecks: null == diagnosticChecks
                ? _value.diagnosticChecks
                : diagnosticChecks // ignore: cast_nullable_to_non_nullable
                      as List<CatalogDiagnosticCheck>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
    _$CatalogImpl value,
    $Res Function(_$CatalogImpl) then,
  ) = __$$CatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String version,
    List<String> storages,
    List<String> rams,
    List<String> platforms,
    String billAgeExemptOption,
    List<CatalogField> inspectionFields,
    List<CatalogStep> inspectionSteps,
    List<CatalogEvidence> evidence,
    List<CatalogDiagnosticCheck> diagnosticChecks,
  });
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
    _$CatalogImpl _value,
    $Res Function(_$CatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? storages = null,
    Object? rams = null,
    Object? platforms = null,
    Object? billAgeExemptOption = null,
    Object? inspectionFields = null,
    Object? inspectionSteps = null,
    Object? evidence = null,
    Object? diagnosticChecks = null,
  }) {
    return _then(
      _$CatalogImpl(
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        storages: null == storages
            ? _value._storages
            : storages // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        rams: null == rams
            ? _value._rams
            : rams // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        platforms: null == platforms
            ? _value._platforms
            : platforms // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        billAgeExemptOption: null == billAgeExemptOption
            ? _value.billAgeExemptOption
            : billAgeExemptOption // ignore: cast_nullable_to_non_nullable
                  as String,
        inspectionFields: null == inspectionFields
            ? _value._inspectionFields
            : inspectionFields // ignore: cast_nullable_to_non_nullable
                  as List<CatalogField>,
        inspectionSteps: null == inspectionSteps
            ? _value._inspectionSteps
            : inspectionSteps // ignore: cast_nullable_to_non_nullable
                  as List<CatalogStep>,
        evidence: null == evidence
            ? _value._evidence
            : evidence // ignore: cast_nullable_to_non_nullable
                  as List<CatalogEvidence>,
        diagnosticChecks: null == diagnosticChecks
            ? _value._diagnosticChecks
            : diagnosticChecks // ignore: cast_nullable_to_non_nullable
                  as List<CatalogDiagnosticCheck>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl({
    required this.version,
    required final List<String> storages,
    required final List<String> rams,
    required final List<String> platforms,
    required this.billAgeExemptOption,
    required final List<CatalogField> inspectionFields,
    required final List<CatalogStep> inspectionSteps,
    required final List<CatalogEvidence> evidence,
    required final List<CatalogDiagnosticCheck> diagnosticChecks,
  }) : _storages = storages,
       _rams = rams,
       _platforms = platforms,
       _inspectionFields = inspectionFields,
       _inspectionSteps = inspectionSteps,
       _evidence = evidence,
       _diagnosticChecks = diagnosticChecks;

  factory _$CatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogImplFromJson(json);

  @override
  final String version;
  final List<String> _storages;
  @override
  List<String> get storages {
    if (_storages is EqualUnmodifiableListView) return _storages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storages);
  }

  final List<String> _rams;
  @override
  List<String> get rams {
    if (_rams is EqualUnmodifiableListView) return _rams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rams);
  }

  final List<String> _platforms;
  @override
  List<String> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  final String billAgeExemptOption;
  final List<CatalogField> _inspectionFields;
  @override
  List<CatalogField> get inspectionFields {
    if (_inspectionFields is EqualUnmodifiableListView)
      return _inspectionFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inspectionFields);
  }

  final List<CatalogStep> _inspectionSteps;
  @override
  List<CatalogStep> get inspectionSteps {
    if (_inspectionSteps is EqualUnmodifiableListView) return _inspectionSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inspectionSteps);
  }

  final List<CatalogEvidence> _evidence;
  @override
  List<CatalogEvidence> get evidence {
    if (_evidence is EqualUnmodifiableListView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evidence);
  }

  final List<CatalogDiagnosticCheck> _diagnosticChecks;
  @override
  List<CatalogDiagnosticCheck> get diagnosticChecks {
    if (_diagnosticChecks is EqualUnmodifiableListView)
      return _diagnosticChecks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diagnosticChecks);
  }

  @override
  String toString() {
    return 'Catalog(version: $version, storages: $storages, rams: $rams, platforms: $platforms, billAgeExemptOption: $billAgeExemptOption, inspectionFields: $inspectionFields, inspectionSteps: $inspectionSteps, evidence: $evidence, diagnosticChecks: $diagnosticChecks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._storages, _storages) &&
            const DeepCollectionEquality().equals(other._rams, _rams) &&
            const DeepCollectionEquality().equals(
              other._platforms,
              _platforms,
            ) &&
            (identical(other.billAgeExemptOption, billAgeExemptOption) ||
                other.billAgeExemptOption == billAgeExemptOption) &&
            const DeepCollectionEquality().equals(
              other._inspectionFields,
              _inspectionFields,
            ) &&
            const DeepCollectionEquality().equals(
              other._inspectionSteps,
              _inspectionSteps,
            ) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            const DeepCollectionEquality().equals(
              other._diagnosticChecks,
              _diagnosticChecks,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    version,
    const DeepCollectionEquality().hash(_storages),
    const DeepCollectionEquality().hash(_rams),
    const DeepCollectionEquality().hash(_platforms),
    billAgeExemptOption,
    const DeepCollectionEquality().hash(_inspectionFields),
    const DeepCollectionEquality().hash(_inspectionSteps),
    const DeepCollectionEquality().hash(_evidence),
    const DeepCollectionEquality().hash(_diagnosticChecks),
  );

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogImplToJson(this);
  }
}

abstract class _Catalog implements Catalog {
  const factory _Catalog({
    required final String version,
    required final List<String> storages,
    required final List<String> rams,
    required final List<String> platforms,
    required final String billAgeExemptOption,
    required final List<CatalogField> inspectionFields,
    required final List<CatalogStep> inspectionSteps,
    required final List<CatalogEvidence> evidence,
    required final List<CatalogDiagnosticCheck> diagnosticChecks,
  }) = _$CatalogImpl;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$CatalogImpl.fromJson;

  @override
  String get version;
  @override
  List<String> get storages;
  @override
  List<String> get rams;
  @override
  List<String> get platforms;
  @override
  String get billAgeExemptOption;
  @override
  List<CatalogField> get inspectionFields;
  @override
  List<CatalogStep> get inspectionSteps;
  @override
  List<CatalogEvidence> get evidence;
  @override
  List<CatalogDiagnosticCheck> get diagnosticChecks;

  /// Create a copy of Catalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
