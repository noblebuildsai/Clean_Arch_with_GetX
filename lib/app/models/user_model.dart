import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@freezed
class UserModel with _$UserModel {

/*
{
  "data": {
    "_id": "68b936138845dc9d11bdc5f2",
    "role": "User",
    "phone": "",
    "email": "sharique.minhaz@ideausher.com",
    "profilePic": {
      "key": "profile-pic-key",
      "url": "https://example.com/profile.jpg",
      "_id": "68b936508845dc9d11bdc5f6"
    },
    "qrcode": {
      "key": "public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
      "url": "https://tipping-bucket.s3.ap-south-1.amazonaws.com/public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
      "_id": "69397c95475ff447c0ba49df"
    },
    "isQrCodeGenerated": false,
    "dob": "09-06-1999",
    "firebaseUid": "jbGh458wHUYGMR9rqAxhn6UuGnz2",
    "firebaseSignInProvider": "google.com",
    "isBlocked": false,
    "isDeleted": false,
    "isSuspended": false,
    "appNotificationsLastSeenAt": "2025-09-04T06:47:47.137Z",
    "createdAt": "2025-09-04T06:47:47.141Z",
    "updatedAt": "2025-09-04T06:48:48.014Z",
    "__v": 0,
    "firstName": "Sharique",
    "gender": "male",
    "lastName": "Minhaz"
  },
  "message": "User profile fetched successfully",
  "success": true
}
*/

  const factory UserModel({
    Data? data,
    String? message,
    bool? success,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}



@freezed
class Data with _$Data {

/*
{
  "_id": "68b936138845dc9d11bdc5f2",
  "role": "User",
  "phone": "",
  "email": "sharique.minhaz@ideausher.com",
  "profilePic": {
    "key": "profile-pic-key",
    "url": "https://example.com/profile.jpg",
    "_id": "68b936508845dc9d11bdc5f6"
  },
  "qrcode": {
    "key": "public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
    "url": "https://tipping-bucket.s3.ap-south-1.amazonaws.com/public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
    "_id": "69397c95475ff447c0ba49df"
  },
  "isQrCodeGenerated": false,
  "dob": "09-06-1999",
  "firebaseUid": "jbGh458wHUYGMR9rqAxhn6UuGnz2",
  "firebaseSignInProvider": "google.com",
  "isBlocked": false,
  "isDeleted": false,
  "isSuspended": false,
  "appNotificationsLastSeenAt": "2025-09-04T06:47:47.137Z",
  "createdAt": "2025-09-04T06:47:47.141Z",
  "updatedAt": "2025-09-04T06:48:48.014Z",
  "__v": 0,
  "firstName": "Sharique",
  "gender": "male",
  "lastName": "Minhaz"
}
*/

  const factory Data({
    @JsonKey(name: '_id') String? id,
    String? role,
    String? phone,
    String? email,
    ProfilePic? profilePic,
    Qrcode? qrcode,
    bool? isQrCodeGenerated,
    String? dob,
    String? firebaseUid,
    String? firebaseSignInProvider,
    bool? isBlocked,
    bool? isDeleted,
    bool? isSuspended,
    String? appNotificationsLastSeenAt,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? v,
    String? firstName,
    String? gender,
    String? lastName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}



@freezed
class Qrcode with _$Qrcode {

/*
{
  "key": "public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
  "url": "https://tipping-bucket.s3.ap-south-1.amazonaws.com/public/qrCodes/66b1c1de-af5a-4815-b18f-c3830cbe974b",
  "_id": "69397c95475ff447c0ba49df"
}
*/

  const factory Qrcode({
    String? key,
    String? url,
    @JsonKey(name: '_id') String? id,
  }) = _Qrcode;

  factory Qrcode.fromJson(Map<String, dynamic> json) =>
      _$QrcodeFromJson(json);
}



@freezed
class ProfilePic with _$ProfilePic {

/*
{
  "key": "profile-pic-key",
  "url": "https://example.com/profile.jpg",
  "_id": "68b936508845dc9d11bdc5f6"
}
*/

  const factory ProfilePic({
    String? key,
    String? url,
    @JsonKey(name: '_id') String? id,
  }) = _ProfilePic;

  factory ProfilePic.fromJson(Map<String, dynamic> json) =>
      _$ProfilePicFromJson(json);
}