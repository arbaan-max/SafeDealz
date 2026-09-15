// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedemptionWrite {

 String get customerPhone; String get invoiceNumber; String get category; int get billAmountPaise; int get discountPaise; String? get branchId;
/// Create a copy of RedemptionWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedemptionWriteCopyWith<RedemptionWrite> get copyWith => _$RedemptionWriteCopyWithImpl<RedemptionWrite>(this as RedemptionWrite, _$identity);

  /// Serializes this RedemptionWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedemptionWrite&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.billAmountPaise, billAmountPaise) || other.billAmountPaise == billAmountPaise)&&(identical(other.discountPaise, discountPaise) || other.discountPaise == discountPaise)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerPhone,invoiceNumber,category,billAmountPaise,discountPaise,branchId);

@override
String toString() {
  return 'RedemptionWrite(customerPhone: $customerPhone, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class $RedemptionWriteCopyWith<$Res>  {
  factory $RedemptionWriteCopyWith(RedemptionWrite value, $Res Function(RedemptionWrite) _then) = _$RedemptionWriteCopyWithImpl;
@useResult
$Res call({
 String customerPhone, String invoiceNumber, String category, int billAmountPaise, int discountPaise, String? branchId
});




}
/// @nodoc
class _$RedemptionWriteCopyWithImpl<$Res>
    implements $RedemptionWriteCopyWith<$Res> {
  _$RedemptionWriteCopyWithImpl(this._self, this._then);

  final RedemptionWrite _self;
  final $Res Function(RedemptionWrite) _then;

/// Create a copy of RedemptionWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerPhone = null,Object? invoiceNumber = null,Object? category = null,Object? billAmountPaise = null,Object? discountPaise = null,Object? branchId = freezed,}) {
  return _then(_self.copyWith(
customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,billAmountPaise: null == billAmountPaise ? _self.billAmountPaise : billAmountPaise // ignore: cast_nullable_to_non_nullable
as int,discountPaise: null == discountPaise ? _self.discountPaise : discountPaise // ignore: cast_nullable_to_non_nullable
as int,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RedemptionWrite].
extension RedemptionWritePatterns on RedemptionWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedemptionWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedemptionWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedemptionWrite value)  $default,){
final _that = this;
switch (_that) {
case _RedemptionWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedemptionWrite value)?  $default,){
final _that = this;
switch (_that) {
case _RedemptionWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerPhone,  String invoiceNumber,  String category,  int billAmountPaise,  int discountPaise,  String? branchId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedemptionWrite() when $default != null:
return $default(_that.customerPhone,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.branchId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerPhone,  String invoiceNumber,  String category,  int billAmountPaise,  int discountPaise,  String? branchId)  $default,) {final _that = this;
switch (_that) {
case _RedemptionWrite():
return $default(_that.customerPhone,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.branchId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerPhone,  String invoiceNumber,  String category,  int billAmountPaise,  int discountPaise,  String? branchId)?  $default,) {final _that = this;
switch (_that) {
case _RedemptionWrite() when $default != null:
return $default(_that.customerPhone,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.branchId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedemptionWrite implements RedemptionWrite {
  const _RedemptionWrite({required this.customerPhone, required this.invoiceNumber, required this.category, required this.billAmountPaise, required this.discountPaise, this.branchId});
  factory _RedemptionWrite.fromJson(Map<String, dynamic> json) => _$RedemptionWriteFromJson(json);

@override final  String customerPhone;
@override final  String invoiceNumber;
@override final  String category;
@override final  int billAmountPaise;
@override final  int discountPaise;
@override final  String? branchId;

/// Create a copy of RedemptionWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedemptionWriteCopyWith<_RedemptionWrite> get copyWith => __$RedemptionWriteCopyWithImpl<_RedemptionWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedemptionWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedemptionWrite&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.billAmountPaise, billAmountPaise) || other.billAmountPaise == billAmountPaise)&&(identical(other.discountPaise, discountPaise) || other.discountPaise == discountPaise)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerPhone,invoiceNumber,category,billAmountPaise,discountPaise,branchId);

@override
String toString() {
  return 'RedemptionWrite(customerPhone: $customerPhone, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class _$RedemptionWriteCopyWith<$Res> implements $RedemptionWriteCopyWith<$Res> {
  factory _$RedemptionWriteCopyWith(_RedemptionWrite value, $Res Function(_RedemptionWrite) _then) = __$RedemptionWriteCopyWithImpl;
@override @useResult
$Res call({
 String customerPhone, String invoiceNumber, String category, int billAmountPaise, int discountPaise, String? branchId
});




}
/// @nodoc
class __$RedemptionWriteCopyWithImpl<$Res>
    implements _$RedemptionWriteCopyWith<$Res> {
  __$RedemptionWriteCopyWithImpl(this._self, this._then);

  final _RedemptionWrite _self;
  final $Res Function(_RedemptionWrite) _then;

/// Create a copy of RedemptionWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerPhone = null,Object? invoiceNumber = null,Object? category = null,Object? billAmountPaise = null,Object? discountPaise = null,Object? branchId = freezed,}) {
  return _then(_RedemptionWrite(
customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,billAmountPaise: null == billAmountPaise ? _self.billAmountPaise : billAmountPaise // ignore: cast_nullable_to_non_nullable
as int,discountPaise: null == discountPaise ? _self.discountPaise : discountPaise // ignore: cast_nullable_to_non_nullable
as int,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
