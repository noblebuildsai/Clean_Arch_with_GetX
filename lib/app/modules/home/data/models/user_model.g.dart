// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  id: json['_id'] as String?,
  role: json['role'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  profilePic: json['profilePic'] == null
      ? null
      : ProfilePic.fromJson(json['profilePic'] as Map<String, dynamic>),
  qrcode: json['qrcode'] == null
      ? null
      : Qrcode.fromJson(json['qrcode'] as Map<String, dynamic>),
  isQrCodeGenerated: json['isQrCodeGenerated'] as bool?,
  dob: json['dob'] as String?,
  firebaseUid: json['firebaseUid'] as String?,
  firebaseSignInProvider: json['firebaseSignInProvider'] as String?,
  isBlocked: json['isBlocked'] as bool?,
  isDeleted: json['isDeleted'] as bool?,
  isSuspended: json['isSuspended'] as bool?,
  appNotificationsLastSeenAt: json['appNotificationsLastSeenAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  v: (json['__v'] as num?)?.toInt(),
  firstName: json['firstName'] as String?,
  gender: json['gender'] as String?,
  lastName: json['lastName'] as String?,
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'phone': instance.phone,
      'email': instance.email,
      'profilePic': instance.profilePic,
      'qrcode': instance.qrcode,
      'isQrCodeGenerated': instance.isQrCodeGenerated,
      'dob': instance.dob,
      'firebaseUid': instance.firebaseUid,
      'firebaseSignInProvider': instance.firebaseSignInProvider,
      'isBlocked': instance.isBlocked,
      'isDeleted': instance.isDeleted,
      'isSuspended': instance.isSuspended,
      'appNotificationsLastSeenAt': instance.appNotificationsLastSeenAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'lastName': instance.lastName,
    };

_$QrcodeImpl _$$QrcodeImplFromJson(Map<String, dynamic> json) => _$QrcodeImpl(
  key: json['key'] as String?,
  url: json['url'] as String?,
  id: json['_id'] as String?,
);

Map<String, dynamic> _$$QrcodeImplToJson(_$QrcodeImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'url': instance.url,
      '_id': instance.id,
    };

_$ProfilePicImpl _$$ProfilePicImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePicImpl(
      key: json['key'] as String?,
      url: json['url'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$ProfilePicImplToJson(_$ProfilePicImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'url': instance.url,
      '_id': instance.id,
    };
