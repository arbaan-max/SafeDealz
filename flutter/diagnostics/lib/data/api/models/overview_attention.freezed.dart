// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_attention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OverviewAttention _$OverviewAttentionFromJson(Map<String, dynamic> json) {
  return _OverviewAttention.fromJson(json);
}

/// @nodoc
mixin _$OverviewAttention {
  OverviewAttentionKind? get kind => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this OverviewAttention to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverviewAttention
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewAttentionCopyWith<OverviewAttention> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewAttentionCopyWith<$Res> {
  factory $OverviewAttentionCopyWith(
    OverviewAttention value,
    $Res Function(OverviewAttention) then,
  ) = _$OverviewAttentionCopyWithImpl<$Res, OverviewAttention>;
  @useResult
  $Res call({OverviewAttentionKind? kind, String? id, String? label});
}

/// @nodoc
class _$OverviewAttentionCopyWithImpl<$Res, $Val extends OverviewAttention>
    implements $OverviewAttentionCopyWith<$Res> {
  _$OverviewAttentionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewAttention
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(
      _value.copyWith(
            kind: freezed == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as OverviewAttentionKind?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewAttentionImplCopyWith<$Res>
    implements $OverviewAttentionCopyWith<$Res> {
  factory _$$OverviewAttentionImplCopyWith(
    _$OverviewAttentionImpl value,
    $Res Function(_$OverviewAttentionImpl) then,
  ) = __$$OverviewAttentionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverviewAttentionKind? kind, String? id, String? label});
}

/// @nodoc
class __$$OverviewAttentionImplCopyWithImpl<$Res>
    extends _$OverviewAttentionCopyWithImpl<$Res, _$OverviewAttentionImpl>
    implements _$$OverviewAttentionImplCopyWith<$Res> {
  __$$OverviewAttentionImplCopyWithImpl(
    _$OverviewAttentionImpl _value,
    $Res Function(_$OverviewAttentionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewAttention
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(
      _$OverviewAttentionImpl(
        kind: freezed == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as OverviewAttentionKind?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewAttentionImpl implements _OverviewAttention {
  const _$OverviewAttentionImpl({this.kind, this.id, this.label});

  factory _$OverviewAttentionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewAttentionImplFromJson(json);

  @override
  final OverviewAttentionKind? kind;
  @override
  final String? id;
  @override
  final String? label;

  @override
  String toString() {
    return 'OverviewAttention(kind: $kind, id: $id, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewAttentionImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, id, label);

  /// Create a copy of OverviewAttention
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewAttentionImplCopyWith<_$OverviewAttentionImpl> get copyWith =>
      __$$OverviewAttentionImplCopyWithImpl<_$OverviewAttentionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewAttentionImplToJson(this);
  }
}

abstract class _OverviewAttention implements OverviewAttention {
  const factory _OverviewAttention({
    final OverviewAttentionKind? kind,
    final String? id,
    final String? label,
  }) = _$OverviewAttentionImpl;

  factory _OverviewAttention.fromJson(Map<String, dynamic> json) =
      _$OverviewAttentionImpl.fromJson;

  @override
  OverviewAttentionKind? get kind;
  @override
  String? get id;
  @override
  String? get label;

  /// Create a copy of OverviewAttention
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewAttentionImplCopyWith<_$OverviewAttentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
