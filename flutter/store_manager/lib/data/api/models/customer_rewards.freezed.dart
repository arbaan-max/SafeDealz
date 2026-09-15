// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_rewards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerRewards {

 String? get phone; String? get customerName; List<RewardBalance>? get balances; List<RewardLedgerEntry>? get entries;
/// Create a copy of CustomerRewards
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerRewardsCopyWith<CustomerRewards> get copyWith => _$CustomerRewardsCopyWithImpl<CustomerRewards>(this as CustomerRewards, _$identity);

  /// Serializes this CustomerRewards to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerRewards&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&const DeepCollectionEquality().equals(other.balances, balances)&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,customerName,const DeepCollectionEquality().hash(balances),const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'CustomerRewards(phone: $phone, customerName: $customerName, balances: $balances, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $CustomerRewardsCopyWith<$Res>  {
  factory $CustomerRewardsCopyWith(CustomerRewards value, $Res Function(CustomerRewards) _then) = _$CustomerRewardsCopyWithImpl;
@useResult
$Res call({
 String? phone, String? customerName, List<RewardBalance>? balances, List<RewardLedgerEntry>? entries
});




}
/// @nodoc
class _$CustomerRewardsCopyWithImpl<$Res>
    implements $CustomerRewardsCopyWith<$Res> {
  _$CustomerRewardsCopyWithImpl(this._self, this._then);

  final CustomerRewards _self;
  final $Res Function(CustomerRewards) _then;

/// Create a copy of CustomerRewards
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? customerName = freezed,Object? balances = freezed,Object? entries = freezed,}) {
  return _then(_self.copyWith(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,balances: freezed == balances ? _self.balances : balances // ignore: cast_nullable_to_non_nullable
as List<RewardBalance>?,entries: freezed == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerEntry>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerRewards].
extension CustomerRewardsPatterns on CustomerRewards {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerRewards value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerRewards() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerRewards value)  $default,){
final _that = this;
switch (_that) {
case _CustomerRewards():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerRewards value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerRewards() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phone,  String? customerName,  List<RewardBalance>? balances,  List<RewardLedgerEntry>? entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerRewards() when $default != null:
return $default(_that.phone,_that.customerName,_that.balances,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phone,  String? customerName,  List<RewardBalance>? balances,  List<RewardLedgerEntry>? entries)  $default,) {final _that = this;
switch (_that) {
case _CustomerRewards():
return $default(_that.phone,_that.customerName,_that.balances,_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phone,  String? customerName,  List<RewardBalance>? balances,  List<RewardLedgerEntry>? entries)?  $default,) {final _that = this;
switch (_that) {
case _CustomerRewards() when $default != null:
return $default(_that.phone,_that.customerName,_that.balances,_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerRewards implements CustomerRewards {
  const _CustomerRewards({this.phone, this.customerName, final  List<RewardBalance>? balances, final  List<RewardLedgerEntry>? entries}): _balances = balances,_entries = entries;
  factory _CustomerRewards.fromJson(Map<String, dynamic> json) => _$CustomerRewardsFromJson(json);

@override final  String? phone;
@override final  String? customerName;
 final  List<RewardBalance>? _balances;
@override List<RewardBalance>? get balances {
  final value = _balances;
  if (value == null) return null;
  if (_balances is EqualUnmodifiableListView) return _balances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RewardLedgerEntry>? _entries;
@override List<RewardLedgerEntry>? get entries {
  final value = _entries;
  if (value == null) return null;
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerRewards
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerRewardsCopyWith<_CustomerRewards> get copyWith => __$CustomerRewardsCopyWithImpl<_CustomerRewards>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerRewardsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerRewards&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&const DeepCollectionEquality().equals(other._balances, _balances)&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,customerName,const DeepCollectionEquality().hash(_balances),const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'CustomerRewards(phone: $phone, customerName: $customerName, balances: $balances, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$CustomerRewardsCopyWith<$Res> implements $CustomerRewardsCopyWith<$Res> {
  factory _$CustomerRewardsCopyWith(_CustomerRewards value, $Res Function(_CustomerRewards) _then) = __$CustomerRewardsCopyWithImpl;
@override @useResult
$Res call({
 String? phone, String? customerName, List<RewardBalance>? balances, List<RewardLedgerEntry>? entries
});




}
/// @nodoc
class __$CustomerRewardsCopyWithImpl<$Res>
    implements _$CustomerRewardsCopyWith<$Res> {
  __$CustomerRewardsCopyWithImpl(this._self, this._then);

  final _CustomerRewards _self;
  final $Res Function(_CustomerRewards) _then;

/// Create a copy of CustomerRewards
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? customerName = freezed,Object? balances = freezed,Object? entries = freezed,}) {
  return _then(_CustomerRewards(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,balances: freezed == balances ? _self._balances : balances // ignore: cast_nullable_to_non_nullable
as List<RewardBalance>?,entries: freezed == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerEntry>?,
  ));
}


}

// dart format on
