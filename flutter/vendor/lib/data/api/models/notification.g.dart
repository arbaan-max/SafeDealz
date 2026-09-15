// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      category: json['category'] as String?,
      audience: json['audience'] as String?,
      status: json['status'] == null
          ? null
          : NotificationStatus.fromJson(json['status'] as String),
      deepLink: json['deepLink'] as String?,
      branchId: json['branchId'] as String?,
      campaignId: json['campaignId'] as String?,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      recipientAccountId: json['recipientAccountId'] as String?,
      recipientRole: json['recipientRole'] as String?,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'category': instance.category,
      'audience': instance.audience,
      'status': instance.status,
      'deepLink': instance.deepLink,
      'branchId': instance.branchId,
      'campaignId': instance.campaignId,
      'readAt': instance.readAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'recipientAccountId': instance.recipientAccountId,
      'recipientRole': instance.recipientRole,
    };
