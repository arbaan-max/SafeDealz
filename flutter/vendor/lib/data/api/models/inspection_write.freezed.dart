// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InspectionWrite _$InspectionWriteFromJson(Map<String, dynamic> json) {
  return _InspectionWrite.fromJson(json);
}

/// @nodoc
mixin _$InspectionWrite {
  Map<String, String>? get answers => throw _privateConstructorUsedError;
  bool? get complete => throw _privateConstructorUsedError;

  /// Serializes this InspectionWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionWriteCopyWith<InspectionWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionWriteCopyWith<$Res> {
  factory $InspectionWriteCopyWith(
    InspectionWrite value,
    $Res Function(InspectionWrite) then,
  ) = _$InspectionWriteCopyWithImpl<$Res, InspectionWrite>;
  @useResult
  $Res call({Map<String, String>? answers, bool? complete});
}

/// @nodoc
class _$InspectionWriteCopyWithImpl<$Res, $Val extends InspectionWrite>
    implements $InspectionWriteCopyWith<$Res> {
  _$InspectionWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answers = freezed, Object? complete = freezed}) {
    return _then(
      _value.copyWith(
            answers: freezed == answers
                ? _value.answers
                : answers // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
            complete: freezed == complete
                ? _value.complete
                : complete // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InspectionWriteImplCopyWith<$Res>
    implements $InspectionWriteCopyWith<$Res> {
  factory _$$InspectionWriteImplCopyWith(
    _$InspectionWriteImpl value,
    $Res Function(_$InspectionWriteImpl) then,
  ) = __$$InspectionWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? answers, bool? complete});
}

/// @nodoc
class __$$InspectionWriteImplCopyWithImpl<$Res>
    extends _$InspectionWriteCopyWithImpl<$Res, _$InspectionWriteImpl>
    implements _$$InspectionWriteImplCopyWith<$Res> {
  __$$InspectionWriteImplCopyWithImpl(
    _$InspectionWriteImpl _value,
    $Res Function(_$InspectionWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InspectionWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answers = freezed, Object? complete = freezed}) {
    return _then(
      _$InspectionWriteImpl(
        answers: freezed == answers
            ? _value._answers
            : answers // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
        complete: freezed == complete
            ? _value.complete
            : complete // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionWriteImpl implements _InspectionWrite {
  const _$InspectionWriteImpl({
    final Map<String, String>? answers,
    this.complete,
  }) : _answers = answers;

  factory _$InspectionWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionWriteImplFromJson(json);

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
  final bool? complete;

  @override
  String toString() {
    return 'InspectionWrite(answers: $answers, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionWriteImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_answers),
    complete,
  );

  /// Create a copy of InspectionWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionWriteImplCopyWith<_$InspectionWriteImpl> get copyWith =>
      __$$InspectionWriteImplCopyWithImpl<_$InspectionWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionWriteImplToJson(this);
  }
}

abstract class _InspectionWrite implements InspectionWrite {
  const factory _InspectionWrite({
    final Map<String, String>? answers,
    final bool? complete,
  }) = _$InspectionWriteImpl;

  factory _InspectionWrite.fromJson(Map<String, dynamic> json) =
      _$InspectionWriteImpl.fromJson;

  @override
  Map<String, String>? get answers;
  @override
  bool? get complete;

  /// Create a copy of InspectionWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionWriteImplCopyWith<_$InspectionWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
