// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportExport _$ReportExportFromJson(Map<String, dynamic> json) {
  return _ReportExport.fromJson(json);
}

/// @nodoc
mixin _$ReportExport {
  String? get filename => throw _privateConstructorUsedError;
  String? get csv => throw _privateConstructorUsedError;
  DateTime? get generatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReportExport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportExport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportExportCopyWith<ReportExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportExportCopyWith<$Res> {
  factory $ReportExportCopyWith(
    ReportExport value,
    $Res Function(ReportExport) then,
  ) = _$ReportExportCopyWithImpl<$Res, ReportExport>;
  @useResult
  $Res call({String? filename, String? csv, DateTime? generatedAt});
}

/// @nodoc
class _$ReportExportCopyWithImpl<$Res, $Val extends ReportExport>
    implements $ReportExportCopyWith<$Res> {
  _$ReportExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportExport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = freezed,
    Object? csv = freezed,
    Object? generatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            filename: freezed == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String?,
            csv: freezed == csv
                ? _value.csv
                : csv // ignore: cast_nullable_to_non_nullable
                      as String?,
            generatedAt: freezed == generatedAt
                ? _value.generatedAt
                : generatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportExportImplCopyWith<$Res>
    implements $ReportExportCopyWith<$Res> {
  factory _$$ReportExportImplCopyWith(
    _$ReportExportImpl value,
    $Res Function(_$ReportExportImpl) then,
  ) = __$$ReportExportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? filename, String? csv, DateTime? generatedAt});
}

/// @nodoc
class __$$ReportExportImplCopyWithImpl<$Res>
    extends _$ReportExportCopyWithImpl<$Res, _$ReportExportImpl>
    implements _$$ReportExportImplCopyWith<$Res> {
  __$$ReportExportImplCopyWithImpl(
    _$ReportExportImpl _value,
    $Res Function(_$ReportExportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportExport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = freezed,
    Object? csv = freezed,
    Object? generatedAt = freezed,
  }) {
    return _then(
      _$ReportExportImpl(
        filename: freezed == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String?,
        csv: freezed == csv
            ? _value.csv
            : csv // ignore: cast_nullable_to_non_nullable
                  as String?,
        generatedAt: freezed == generatedAt
            ? _value.generatedAt
            : generatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportExportImpl implements _ReportExport {
  const _$ReportExportImpl({this.filename, this.csv, this.generatedAt});

  factory _$ReportExportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportExportImplFromJson(json);

  @override
  final String? filename;
  @override
  final String? csv;
  @override
  final DateTime? generatedAt;

  @override
  String toString() {
    return 'ReportExport(filename: $filename, csv: $csv, generatedAt: $generatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportExportImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.csv, csv) || other.csv == csv) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename, csv, generatedAt);

  /// Create a copy of ReportExport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportExportImplCopyWith<_$ReportExportImpl> get copyWith =>
      __$$ReportExportImplCopyWithImpl<_$ReportExportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportExportImplToJson(this);
  }
}

abstract class _ReportExport implements ReportExport {
  const factory _ReportExport({
    final String? filename,
    final String? csv,
    final DateTime? generatedAt,
  }) = _$ReportExportImpl;

  factory _ReportExport.fromJson(Map<String, dynamic> json) =
      _$ReportExportImpl.fromJson;

  @override
  String? get filename;
  @override
  String? get csv;
  @override
  DateTime? get generatedAt;

  /// Create a copy of ReportExport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportExportImplCopyWith<_$ReportExportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
