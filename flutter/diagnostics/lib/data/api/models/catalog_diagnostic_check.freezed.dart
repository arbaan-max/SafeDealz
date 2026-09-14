// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_diagnostic_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogDiagnosticCheck _$CatalogDiagnosticCheckFromJson(
  Map<String, dynamic> json,
) {
  return _CatalogDiagnosticCheck.fromJson(json);
}

/// @nodoc
mixin _$CatalogDiagnosticCheck {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;

  /// Serializes this CatalogDiagnosticCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogDiagnosticCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogDiagnosticCheckCopyWith<CatalogDiagnosticCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogDiagnosticCheckCopyWith<$Res> {
  factory $CatalogDiagnosticCheckCopyWith(
    CatalogDiagnosticCheck value,
    $Res Function(CatalogDiagnosticCheck) then,
  ) = _$CatalogDiagnosticCheckCopyWithImpl<$Res, CatalogDiagnosticCheck>;
  @useResult
  $Res call({String id, String label, String group});
}

/// @nodoc
class _$CatalogDiagnosticCheckCopyWithImpl<
  $Res,
  $Val extends CatalogDiagnosticCheck
>
    implements $CatalogDiagnosticCheckCopyWith<$Res> {
  _$CatalogDiagnosticCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogDiagnosticCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null, Object? group = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            group: null == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogDiagnosticCheckImplCopyWith<$Res>
    implements $CatalogDiagnosticCheckCopyWith<$Res> {
  factory _$$CatalogDiagnosticCheckImplCopyWith(
    _$CatalogDiagnosticCheckImpl value,
    $Res Function(_$CatalogDiagnosticCheckImpl) then,
  ) = __$$CatalogDiagnosticCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String group});
}

/// @nodoc
class __$$CatalogDiagnosticCheckImplCopyWithImpl<$Res>
    extends
        _$CatalogDiagnosticCheckCopyWithImpl<$Res, _$CatalogDiagnosticCheckImpl>
    implements _$$CatalogDiagnosticCheckImplCopyWith<$Res> {
  __$$CatalogDiagnosticCheckImplCopyWithImpl(
    _$CatalogDiagnosticCheckImpl _value,
    $Res Function(_$CatalogDiagnosticCheckImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogDiagnosticCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null, Object? group = null}) {
    return _then(
      _$CatalogDiagnosticCheckImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        group: null == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogDiagnosticCheckImpl implements _CatalogDiagnosticCheck {
  const _$CatalogDiagnosticCheckImpl({
    required this.id,
    required this.label,
    required this.group,
  });

  factory _$CatalogDiagnosticCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogDiagnosticCheckImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String group;

  @override
  String toString() {
    return 'CatalogDiagnosticCheck(id: $id, label: $label, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogDiagnosticCheckImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, group);

  /// Create a copy of CatalogDiagnosticCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogDiagnosticCheckImplCopyWith<_$CatalogDiagnosticCheckImpl>
  get copyWith =>
      __$$CatalogDiagnosticCheckImplCopyWithImpl<_$CatalogDiagnosticCheckImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogDiagnosticCheckImplToJson(this);
  }
}

abstract class _CatalogDiagnosticCheck implements CatalogDiagnosticCheck {
  const factory _CatalogDiagnosticCheck({
    required final String id,
    required final String label,
    required final String group,
  }) = _$CatalogDiagnosticCheckImpl;

  factory _CatalogDiagnosticCheck.fromJson(Map<String, dynamic> json) =
      _$CatalogDiagnosticCheckImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get group;

  /// Create a copy of CatalogDiagnosticCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogDiagnosticCheckImplCopyWith<_$CatalogDiagnosticCheckImpl>
  get copyWith => throw _privateConstructorUsedError;
}
