// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InspectionRecord _$InspectionRecordFromJson(Map<String, dynamic> json) {
  return _InspectionRecord.fromJson(json);
}

/// @nodoc
mixin _$InspectionRecord {
  Map<String, String>? get answers => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  bool? get complete => throw _privateConstructorUsedError;
  bool? get billRequired => throw _privateConstructorUsedError;

  /// Serializes this InspectionRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionRecordCopyWith<InspectionRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionRecordCopyWith<$Res> {
  factory $InspectionRecordCopyWith(
    InspectionRecord value,
    $Res Function(InspectionRecord) then,
  ) = _$InspectionRecordCopyWithImpl<$Res, InspectionRecord>;
  @useResult
  $Res call({
    Map<String, String>? answers,
    String? source,
    bool? complete,
    bool? billRequired,
  });
}

/// @nodoc
class _$InspectionRecordCopyWithImpl<$Res, $Val extends InspectionRecord>
    implements $InspectionRecordCopyWith<$Res> {
  _$InspectionRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = freezed,
    Object? source = freezed,
    Object? complete = freezed,
    Object? billRequired = freezed,
  }) {
    return _then(
      _value.copyWith(
            answers: freezed == answers
                ? _value.answers
                : answers // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
            source: freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as String?,
            complete: freezed == complete
                ? _value.complete
                : complete // ignore: cast_nullable_to_non_nullable
                      as bool?,
            billRequired: freezed == billRequired
                ? _value.billRequired
                : billRequired // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InspectionRecordImplCopyWith<$Res>
    implements $InspectionRecordCopyWith<$Res> {
  factory _$$InspectionRecordImplCopyWith(
    _$InspectionRecordImpl value,
    $Res Function(_$InspectionRecordImpl) then,
  ) = __$$InspectionRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, String>? answers,
    String? source,
    bool? complete,
    bool? billRequired,
  });
}

/// @nodoc
class __$$InspectionRecordImplCopyWithImpl<$Res>
    extends _$InspectionRecordCopyWithImpl<$Res, _$InspectionRecordImpl>
    implements _$$InspectionRecordImplCopyWith<$Res> {
  __$$InspectionRecordImplCopyWithImpl(
    _$InspectionRecordImpl _value,
    $Res Function(_$InspectionRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InspectionRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = freezed,
    Object? source = freezed,
    Object? complete = freezed,
    Object? billRequired = freezed,
  }) {
    return _then(
      _$InspectionRecordImpl(
        answers: freezed == answers
            ? _value._answers
            : answers // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
        source: freezed == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as String?,
        complete: freezed == complete
            ? _value.complete
            : complete // ignore: cast_nullable_to_non_nullable
                  as bool?,
        billRequired: freezed == billRequired
            ? _value.billRequired
            : billRequired // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionRecordImpl implements _InspectionRecord {
  const _$InspectionRecordImpl({
    final Map<String, String>? answers,
    this.source,
    this.complete,
    this.billRequired,
  }) : _answers = answers;

  factory _$InspectionRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionRecordImplFromJson(json);

  final Map<String, String>? _answers;
  @override
  Map<String, String>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? source;
  @override
  final bool? complete;
  @override
  final bool? billRequired;

  @override
  String toString() {
    return 'InspectionRecord(answers: $answers, source: $source, complete: $complete, billRequired: $billRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionRecordImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.billRequired, billRequired) ||
                other.billRequired == billRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_answers),
    source,
    complete,
    billRequired,
  );

  /// Create a copy of InspectionRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionRecordImplCopyWith<_$InspectionRecordImpl> get copyWith =>
      __$$InspectionRecordImplCopyWithImpl<_$InspectionRecordImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionRecordImplToJson(this);
  }
}

abstract class _InspectionRecord implements InspectionRecord {
  const factory _InspectionRecord({
    final Map<String, String>? answers,
    final String? source,
    final bool? complete,
    final bool? billRequired,
  }) = _$InspectionRecordImpl;

  factory _InspectionRecord.fromJson(Map<String, dynamic> json) =
      _$InspectionRecordImpl.fromJson;

  @override
  Map<String, String>? get answers;
  @override
  String? get source;
  @override
  bool? get complete;
  @override
  bool? get billRequired;

  /// Create a copy of InspectionRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionRecordImplCopyWith<_$InspectionRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
