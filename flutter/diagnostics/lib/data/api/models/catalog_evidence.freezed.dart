// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_evidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogEvidence _$CatalogEvidenceFromJson(Map<String, dynamic> json) {
  return _CatalogEvidence.fromJson(json);
}

/// @nodoc
mixin _$CatalogEvidence {
  String get purpose => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool? get billOnly => throw _privateConstructorUsedError;

  /// Serializes this CatalogEvidence to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogEvidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogEvidenceCopyWith<CatalogEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEvidenceCopyWith<$Res> {
  factory $CatalogEvidenceCopyWith(
    CatalogEvidence value,
    $Res Function(CatalogEvidence) then,
  ) = _$CatalogEvidenceCopyWithImpl<$Res, CatalogEvidence>;
  @useResult
  $Res call({String purpose, String label, bool? billOnly});
}

/// @nodoc
class _$CatalogEvidenceCopyWithImpl<$Res, $Val extends CatalogEvidence>
    implements $CatalogEvidenceCopyWith<$Res> {
  _$CatalogEvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogEvidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purpose = null,
    Object? label = null,
    Object? billOnly = freezed,
  }) {
    return _then(
      _value.copyWith(
            purpose: null == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            billOnly: freezed == billOnly
                ? _value.billOnly
                : billOnly // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogEvidenceImplCopyWith<$Res>
    implements $CatalogEvidenceCopyWith<$Res> {
  factory _$$CatalogEvidenceImplCopyWith(
    _$CatalogEvidenceImpl value,
    $Res Function(_$CatalogEvidenceImpl) then,
  ) = __$$CatalogEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purpose, String label, bool? billOnly});
}

/// @nodoc
class __$$CatalogEvidenceImplCopyWithImpl<$Res>
    extends _$CatalogEvidenceCopyWithImpl<$Res, _$CatalogEvidenceImpl>
    implements _$$CatalogEvidenceImplCopyWith<$Res> {
  __$$CatalogEvidenceImplCopyWithImpl(
    _$CatalogEvidenceImpl _value,
    $Res Function(_$CatalogEvidenceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogEvidence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purpose = null,
    Object? label = null,
    Object? billOnly = freezed,
  }) {
    return _then(
      _$CatalogEvidenceImpl(
        purpose: null == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        billOnly: freezed == billOnly
            ? _value.billOnly
            : billOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogEvidenceImpl implements _CatalogEvidence {
  const _$CatalogEvidenceImpl({
    required this.purpose,
    required this.label,
    this.billOnly,
  });

  factory _$CatalogEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogEvidenceImplFromJson(json);

  @override
  final String purpose;
  @override
  final String label;
  @override
  final bool? billOnly;

  @override
  String toString() {
    return 'CatalogEvidence(purpose: $purpose, label: $label, billOnly: $billOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogEvidenceImpl &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.billOnly, billOnly) ||
                other.billOnly == billOnly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, purpose, label, billOnly);

  /// Create a copy of CatalogEvidence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogEvidenceImplCopyWith<_$CatalogEvidenceImpl> get copyWith =>
      __$$CatalogEvidenceImplCopyWithImpl<_$CatalogEvidenceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogEvidenceImplToJson(this);
  }
}

abstract class _CatalogEvidence implements CatalogEvidence {
  const factory _CatalogEvidence({
    required final String purpose,
    required final String label,
    final bool? billOnly,
  }) = _$CatalogEvidenceImpl;

  factory _CatalogEvidence.fromJson(Map<String, dynamic> json) =
      _$CatalogEvidenceImpl.fromJson;

  @override
  String get purpose;
  @override
  String get label;
  @override
  bool? get billOnly;

  /// Create a copy of CatalogEvidence
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogEvidenceImplCopyWith<_$CatalogEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
