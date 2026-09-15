// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Redemption {

 String? get id; String? get customerPhone; String? get customerPhoneMasked; String? get customerName; String? get branchId; String? get invoiceNumber; String? get category; int? get billAmountPaise; int? get discountPaise; int? get points; int? get remainingPoints; int? get remainingValuePaise; RedemptionStatus? get status; bool? get duplicateInvoice; bool? get otpRequired; DateTime? get redeemedAt; String? get reminder;
/// Create a copy of Redemption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedemptionCopyWith<Redemption> get copyWith => _$RedemptionCopyWithImpl<Redemption>(this as Redemption, _$identity);

  /// Serializes this Redemption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Redemption&&(identical(other.id, id) || other.id == id)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerPhoneMasked, customerPhoneMasked) || other.customerPhoneMasked == customerPhoneMasked)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.billAmountPaise, billAmountPaise) || other.billAmountPaise == billAmountPaise)&&(identical(other.discountPaise, discountPaise) || other.discountPaise == discountPaise)&&(identical(other.points, points) || other.points == points)&&(identical(other.remainingPoints, remainingPoints) || other.remainingPoints == remainingPoints)&&(identical(other.remainingValuePaise, remainingValuePaise) || other.remainingValuePaise == remainingValuePaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.duplicateInvoice, duplicateInvoice) || other.duplicateInvoice == duplicateInvoice)&&(identical(other.otpRequired, otpRequired) || other.otpRequired == otpRequired)&&(identical(other.redeemedAt, redeemedAt) || other.redeemedAt == redeemedAt)&&(identical(other.reminder, reminder) || other.reminder == reminder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerPhone,customerPhoneMasked,customerName,branchId,invoiceNumber,category,billAmountPaise,discountPaise,points,remainingPoints,remainingValuePaise,status,duplicateInvoice,otpRequired,redeemedAt,reminder);

@override
String toString() {
  return 'Redemption(id: $id, customerPhone: $customerPhone, customerPhoneMasked: $customerPhoneMasked, customerName: $customerName, branchId: $branchId, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, points: $points, remainingPoints: $remainingPoints, remainingValuePaise: $remainingValuePaise, status: $status, duplicateInvoice: $duplicateInvoice, otpRequired: $otpRequired, redeemedAt: $redeemedAt, reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class $RedemptionCopyWith<$Res>  {
  factory $RedemptionCopyWith(Redemption value, $Res Function(Redemption) _then) = _$RedemptionCopyWithImpl;
@useResult
$Res call({
 String? id, String? customerPhone, String? customerPhoneMasked, String? customerName, String? branchId, String? invoiceNumber, String? category, int? billAmountPaise, int? discountPaise, int? points, int? remainingPoints, int? remainingValuePaise, RedemptionStatus? status, bool? duplicateInvoice, bool? otpRequired, DateTime? redeemedAt, String? reminder
});




}
/// @nodoc
class _$RedemptionCopyWithImpl<$Res>
    implements $RedemptionCopyWith<$Res> {
  _$RedemptionCopyWithImpl(this._self, this._then);

  final Redemption _self;
  final $Res Function(Redemption) _then;

/// Create a copy of Redemption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerPhone = freezed,Object? customerPhoneMasked = freezed,Object? customerName = freezed,Object? branchId = freezed,Object? invoiceNumber = freezed,Object? category = freezed,Object? billAmountPaise = freezed,Object? discountPaise = freezed,Object? points = freezed,Object? remainingPoints = freezed,Object? remainingValuePaise = freezed,Object? status = freezed,Object? duplicateInvoice = freezed,Object? otpRequired = freezed,Object? redeemedAt = freezed,Object? reminder = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerPhoneMasked: freezed == customerPhoneMasked ? _self.customerPhoneMasked : customerPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,billAmountPaise: freezed == billAmountPaise ? _self.billAmountPaise : billAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,discountPaise: freezed == discountPaise ? _self.discountPaise : discountPaise // ignore: cast_nullable_to_non_nullable
as int?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,remainingPoints: freezed == remainingPoints ? _self.remainingPoints : remainingPoints // ignore: cast_nullable_to_non_nullable
as int?,remainingValuePaise: freezed == remainingValuePaise ? _self.remainingValuePaise : remainingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RedemptionStatus?,duplicateInvoice: freezed == duplicateInvoice ? _self.duplicateInvoice : duplicateInvoice // ignore: cast_nullable_to_non_nullable
as bool?,otpRequired: freezed == otpRequired ? _self.otpRequired : otpRequired // ignore: cast_nullable_to_non_nullable
as bool?,redeemedAt: freezed == redeemedAt ? _self.redeemedAt : redeemedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reminder: freezed == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Redemption].
extension RedemptionPatterns on Redemption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Redemption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Redemption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Redemption value)  $default,){
final _that = this;
switch (_that) {
case _Redemption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Redemption value)?  $default,){
final _that = this;
switch (_that) {
case _Redemption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? customerPhone,  String? customerPhoneMasked,  String? customerName,  String? branchId,  String? invoiceNumber,  String? category,  int? billAmountPaise,  int? discountPaise,  int? points,  int? remainingPoints,  int? remainingValuePaise,  RedemptionStatus? status,  bool? duplicateInvoice,  bool? otpRequired,  DateTime? redeemedAt,  String? reminder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Redemption() when $default != null:
return $default(_that.id,_that.customerPhone,_that.customerPhoneMasked,_that.customerName,_that.branchId,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.points,_that.remainingPoints,_that.remainingValuePaise,_that.status,_that.duplicateInvoice,_that.otpRequired,_that.redeemedAt,_that.reminder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? customerPhone,  String? customerPhoneMasked,  String? customerName,  String? branchId,  String? invoiceNumber,  String? category,  int? billAmountPaise,  int? discountPaise,  int? points,  int? remainingPoints,  int? remainingValuePaise,  RedemptionStatus? status,  bool? duplicateInvoice,  bool? otpRequired,  DateTime? redeemedAt,  String? reminder)  $default,) {final _that = this;
switch (_that) {
case _Redemption():
return $default(_that.id,_that.customerPhone,_that.customerPhoneMasked,_that.customerName,_that.branchId,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.points,_that.remainingPoints,_that.remainingValuePaise,_that.status,_that.duplicateInvoice,_that.otpRequired,_that.redeemedAt,_that.reminder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? customerPhone,  String? customerPhoneMasked,  String? customerName,  String? branchId,  String? invoiceNumber,  String? category,  int? billAmountPaise,  int? discountPaise,  int? points,  int? remainingPoints,  int? remainingValuePaise,  RedemptionStatus? status,  bool? duplicateInvoice,  bool? otpRequired,  DateTime? redeemedAt,  String? reminder)?  $default,) {final _that = this;
switch (_that) {
case _Redemption() when $default != null:
return $default(_that.id,_that.customerPhone,_that.customerPhoneMasked,_that.customerName,_that.branchId,_that.invoiceNumber,_that.category,_that.billAmountPaise,_that.discountPaise,_that.points,_that.remainingPoints,_that.remainingValuePaise,_that.status,_that.duplicateInvoice,_that.otpRequired,_that.redeemedAt,_that.reminder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Redemption implements Redemption {
  const _Redemption({this.id, this.customerPhone, this.customerPhoneMasked, this.customerName, this.branchId, this.invoiceNumber, this.category, this.billAmountPaise, this.discountPaise, this.points, this.remainingPoints, this.remainingValuePaise, this.status, this.duplicateInvoice, this.otpRequired, this.redeemedAt, this.reminder});
  factory _Redemption.fromJson(Map<String, dynamic> json) => _$RedemptionFromJson(json);

@override final  String? id;
@override final  String? customerPhone;
@override final  String? customerPhoneMasked;
@override final  String? customerName;
@override final  String? branchId;
@override final  String? invoiceNumber;
@override final  String? category;
@override final  int? billAmountPaise;
@override final  int? discountPaise;
@override final  int? points;
@override final  int? remainingPoints;
@override final  int? remainingValuePaise;
@override final  RedemptionStatus? status;
@override final  bool? duplicateInvoice;
@override final  bool? otpRequired;
@override final  DateTime? redeemedAt;
@override final  String? reminder;

/// Create a copy of Redemption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedemptionCopyWith<_Redemption> get copyWith => __$RedemptionCopyWithImpl<_Redemption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedemptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Redemption&&(identical(other.id, id) || other.id == id)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerPhoneMasked, customerPhoneMasked) || other.customerPhoneMasked == customerPhoneMasked)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.billAmountPaise, billAmountPaise) || other.billAmountPaise == billAmountPaise)&&(identical(other.discountPaise, discountPaise) || other.discountPaise == discountPaise)&&(identical(other.points, points) || other.points == points)&&(identical(other.remainingPoints, remainingPoints) || other.remainingPoints == remainingPoints)&&(identical(other.remainingValuePaise, remainingValuePaise) || other.remainingValuePaise == remainingValuePaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.duplicateInvoice, duplicateInvoice) || other.duplicateInvoice == duplicateInvoice)&&(identical(other.otpRequired, otpRequired) || other.otpRequired == otpRequired)&&(identical(other.redeemedAt, redeemedAt) || other.redeemedAt == redeemedAt)&&(identical(other.reminder, reminder) || other.reminder == reminder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerPhone,customerPhoneMasked,customerName,branchId,invoiceNumber,category,billAmountPaise,discountPaise,points,remainingPoints,remainingValuePaise,status,duplicateInvoice,otpRequired,redeemedAt,reminder);

@override
String toString() {
  return 'Redemption(id: $id, customerPhone: $customerPhone, customerPhoneMasked: $customerPhoneMasked, customerName: $customerName, branchId: $branchId, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, points: $points, remainingPoints: $remainingPoints, remainingValuePaise: $remainingValuePaise, status: $status, duplicateInvoice: $duplicateInvoice, otpRequired: $otpRequired, redeemedAt: $redeemedAt, reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class _$RedemptionCopyWith<$Res> implements $RedemptionCopyWith<$Res> {
  factory _$RedemptionCopyWith(_Redemption value, $Res Function(_Redemption) _then) = __$RedemptionCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? customerPhone, String? customerPhoneMasked, String? customerName, String? branchId, String? invoiceNumber, String? category, int? billAmountPaise, int? discountPaise, int? points, int? remainingPoints, int? remainingValuePaise, RedemptionStatus? status, bool? duplicateInvoice, bool? otpRequired, DateTime? redeemedAt, String? reminder
});




}
/// @nodoc
class __$RedemptionCopyWithImpl<$Res>
    implements _$RedemptionCopyWith<$Res> {
  __$RedemptionCopyWithImpl(this._self, this._then);

  final _Redemption _self;
  final $Res Function(_Redemption) _then;

/// Create a copy of Redemption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerPhone = freezed,Object? customerPhoneMasked = freezed,Object? customerName = freezed,Object? branchId = freezed,Object? invoiceNumber = freezed,Object? category = freezed,Object? billAmountPaise = freezed,Object? discountPaise = freezed,Object? points = freezed,Object? remainingPoints = freezed,Object? remainingValuePaise = freezed,Object? status = freezed,Object? duplicateInvoice = freezed,Object? otpRequired = freezed,Object? redeemedAt = freezed,Object? reminder = freezed,}) {
  return _then(_Redemption(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerPhoneMasked: freezed == customerPhoneMasked ? _self.customerPhoneMasked : customerPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,billAmountPaise: freezed == billAmountPaise ? _self.billAmountPaise : billAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,discountPaise: freezed == discountPaise ? _self.discountPaise : discountPaise // ignore: cast_nullable_to_non_nullable
as int?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,remainingPoints: freezed == remainingPoints ? _self.remainingPoints : remainingPoints // ignore: cast_nullable_to_non_nullable
as int?,remainingValuePaise: freezed == remainingValuePaise ? _self.remainingValuePaise : remainingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RedemptionStatus?,duplicateInvoice: freezed == duplicateInvoice ? _self.duplicateInvoice : duplicateInvoice // ignore: cast_nullable_to_non_nullable
as bool?,otpRequired: freezed == otpRequired ? _self.otpRequired : otpRequired // ignore: cast_nullable_to_non_nullable
as bool?,redeemedAt: freezed == redeemedAt ? _self.redeemedAt : redeemedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reminder: freezed == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
