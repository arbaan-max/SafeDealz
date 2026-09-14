// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Overview _$OverviewFromJson(Map<String, dynamic> json) {
  return _Overview.fromJson(json);
}

/// @nodoc
mixin _$Overview {
  int? get liveAuctions => throw _privateConstructorUsedError;
  int? get awaitingAcceptance => throw _privateConstructorUsedError;
  int? get paymentExceptions => throw _privateConstructorUsedError;
  int? get completedValuePaise => throw _privateConstructorUsedError;
  List<OverviewAttention>? get needsAttention =>
      throw _privateConstructorUsedError;

  /// Serializes this Overview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Overview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewCopyWith<Overview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewCopyWith<$Res> {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) then) =
      _$OverviewCopyWithImpl<$Res, Overview>;
  @useResult
  $Res call({
    int? liveAuctions,
    int? awaitingAcceptance,
    int? paymentExceptions,
    int? completedValuePaise,
    List<OverviewAttention>? needsAttention,
  });
}

/// @nodoc
class _$OverviewCopyWithImpl<$Res, $Val extends Overview>
    implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Overview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveAuctions = freezed,
    Object? awaitingAcceptance = freezed,
    Object? paymentExceptions = freezed,
    Object? completedValuePaise = freezed,
    Object? needsAttention = freezed,
  }) {
    return _then(
      _value.copyWith(
            liveAuctions: freezed == liveAuctions
                ? _value.liveAuctions
                : liveAuctions // ignore: cast_nullable_to_non_nullable
                      as int?,
            awaitingAcceptance: freezed == awaitingAcceptance
                ? _value.awaitingAcceptance
                : awaitingAcceptance // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentExceptions: freezed == paymentExceptions
                ? _value.paymentExceptions
                : paymentExceptions // ignore: cast_nullable_to_non_nullable
                      as int?,
            completedValuePaise: freezed == completedValuePaise
                ? _value.completedValuePaise
                : completedValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            needsAttention: freezed == needsAttention
                ? _value.needsAttention
                : needsAttention // ignore: cast_nullable_to_non_nullable
                      as List<OverviewAttention>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res>
    implements $OverviewCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
    _$OverviewImpl value,
    $Res Function(_$OverviewImpl) then,
  ) = __$$OverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? liveAuctions,
    int? awaitingAcceptance,
    int? paymentExceptions,
    int? completedValuePaise,
    List<OverviewAttention>? needsAttention,
  });
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$OverviewCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
    _$OverviewImpl _value,
    $Res Function(_$OverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Overview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveAuctions = freezed,
    Object? awaitingAcceptance = freezed,
    Object? paymentExceptions = freezed,
    Object? completedValuePaise = freezed,
    Object? needsAttention = freezed,
  }) {
    return _then(
      _$OverviewImpl(
        liveAuctions: freezed == liveAuctions
            ? _value.liveAuctions
            : liveAuctions // ignore: cast_nullable_to_non_nullable
                  as int?,
        awaitingAcceptance: freezed == awaitingAcceptance
            ? _value.awaitingAcceptance
            : awaitingAcceptance // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentExceptions: freezed == paymentExceptions
            ? _value.paymentExceptions
            : paymentExceptions // ignore: cast_nullable_to_non_nullable
                  as int?,
        completedValuePaise: freezed == completedValuePaise
            ? _value.completedValuePaise
            : completedValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        needsAttention: freezed == needsAttention
            ? _value._needsAttention
            : needsAttention // ignore: cast_nullable_to_non_nullable
                  as List<OverviewAttention>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewImpl implements _Overview {
  const _$OverviewImpl({
    this.liveAuctions,
    this.awaitingAcceptance,
    this.paymentExceptions,
    this.completedValuePaise,
    final List<OverviewAttention>? needsAttention,
  }) : _needsAttention = needsAttention;

  factory _$OverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewImplFromJson(json);

  @override
  final int? liveAuctions;
  @override
  final int? awaitingAcceptance;
  @override
  final int? paymentExceptions;
  @override
  final int? completedValuePaise;
  final List<OverviewAttention>? _needsAttention;
  @override
  List<OverviewAttention>? get needsAttention {
    final value = _needsAttention;
    if (value == null) return null;
    if (_needsAttention is EqualUnmodifiableListView) return _needsAttention;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Overview(liveAuctions: $liveAuctions, awaitingAcceptance: $awaitingAcceptance, paymentExceptions: $paymentExceptions, completedValuePaise: $completedValuePaise, needsAttention: $needsAttention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewImpl &&
            (identical(other.liveAuctions, liveAuctions) ||
                other.liveAuctions == liveAuctions) &&
            (identical(other.awaitingAcceptance, awaitingAcceptance) ||
                other.awaitingAcceptance == awaitingAcceptance) &&
            (identical(other.paymentExceptions, paymentExceptions) ||
                other.paymentExceptions == paymentExceptions) &&
            (identical(other.completedValuePaise, completedValuePaise) ||
                other.completedValuePaise == completedValuePaise) &&
            const DeepCollectionEquality().equals(
              other._needsAttention,
              _needsAttention,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    liveAuctions,
    awaitingAcceptance,
    paymentExceptions,
    completedValuePaise,
    const DeepCollectionEquality().hash(_needsAttention),
  );

  /// Create a copy of Overview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      __$$OverviewImplCopyWithImpl<_$OverviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewImplToJson(this);
  }
}

abstract class _Overview implements Overview {
  const factory _Overview({
    final int? liveAuctions,
    final int? awaitingAcceptance,
    final int? paymentExceptions,
    final int? completedValuePaise,
    final List<OverviewAttention>? needsAttention,
  }) = _$OverviewImpl;

  factory _Overview.fromJson(Map<String, dynamic> json) =
      _$OverviewImpl.fromJson;

  @override
  int? get liveAuctions;
  @override
  int? get awaitingAcceptance;
  @override
  int? get paymentExceptions;
  @override
  int? get completedValuePaise;
  @override
  List<OverviewAttention>? get needsAttention;

  /// Create a copy of Overview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
