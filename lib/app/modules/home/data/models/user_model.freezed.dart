// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  Data? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({Data? data, String? message, bool? success});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _value.copyWith(
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Data?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, String? message, bool? success});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({this.data, this.message, this.success});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final Data? data;
  @override
  final String? message;
  @override
  final bool? success;

  @override
  String toString() {
    return 'UserModel(data: $data, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, success);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    final Data? data,
    final String? message,
    final bool? success,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  Data? get data;
  @override
  String? get message;
  @override
  bool? get success;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ProfilePic? get profilePic => throw _privateConstructorUsedError;
  Qrcode? get qrcode => throw _privateConstructorUsedError;
  bool? get isQrCodeGenerated => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get firebaseUid => throw _privateConstructorUsedError;
  String? get firebaseSignInProvider => throw _privateConstructorUsedError;
  bool? get isBlocked => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  bool? get isSuspended => throw _privateConstructorUsedError;
  String? get appNotificationsLastSeenAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({
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
  });

  $ProfilePicCopyWith<$Res>? get profilePic;
  $QrcodeCopyWith<$Res>? get qrcode;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
    Object? qrcode = freezed,
    Object? isQrCodeGenerated = freezed,
    Object? dob = freezed,
    Object? firebaseUid = freezed,
    Object? firebaseSignInProvider = freezed,
    Object? isBlocked = freezed,
    Object? isDeleted = freezed,
    Object? isSuspended = freezed,
    Object? appNotificationsLastSeenAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? lastName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as ProfilePic?,
            qrcode: freezed == qrcode
                ? _value.qrcode
                : qrcode // ignore: cast_nullable_to_non_nullable
                      as Qrcode?,
            isQrCodeGenerated: freezed == isQrCodeGenerated
                ? _value.isQrCodeGenerated
                : isQrCodeGenerated // ignore: cast_nullable_to_non_nullable
                      as bool?,
            dob: freezed == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                      as String?,
            firebaseUid: freezed == firebaseUid
                ? _value.firebaseUid
                : firebaseUid // ignore: cast_nullable_to_non_nullable
                      as String?,
            firebaseSignInProvider: freezed == firebaseSignInProvider
                ? _value.firebaseSignInProvider
                : firebaseSignInProvider // ignore: cast_nullable_to_non_nullable
                      as String?,
            isBlocked: freezed == isBlocked
                ? _value.isBlocked
                : isBlocked // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isDeleted: freezed == isDeleted
                ? _value.isDeleted
                : isDeleted // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isSuspended: freezed == isSuspended
                ? _value.isSuspended
                : isSuspended // ignore: cast_nullable_to_non_nullable
                      as bool?,
            appNotificationsLastSeenAt: freezed == appNotificationsLastSeenAt
                ? _value.appNotificationsLastSeenAt
                : appNotificationsLastSeenAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            v: freezed == v
                ? _value.v
                : v // ignore: cast_nullable_to_non_nullable
                      as int?,
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfilePicCopyWith<$Res>? get profilePic {
    if (_value.profilePic == null) {
      return null;
    }

    return $ProfilePicCopyWith<$Res>(_value.profilePic!, (value) {
      return _then(_value.copyWith(profilePic: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrcodeCopyWith<$Res>? get qrcode {
    if (_value.qrcode == null) {
      return null;
    }

    return $QrcodeCopyWith<$Res>(_value.qrcode!, (value) {
      return _then(_value.copyWith(qrcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
    _$DataImpl value,
    $Res Function(_$DataImpl) then,
  ) = __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });

  @override
  $ProfilePicCopyWith<$Res>? get profilePic;
  @override
  $QrcodeCopyWith<$Res>? get qrcode;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
    : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
    Object? qrcode = freezed,
    Object? isQrCodeGenerated = freezed,
    Object? dob = freezed,
    Object? firebaseUid = freezed,
    Object? firebaseSignInProvider = freezed,
    Object? isBlocked = freezed,
    Object? isDeleted = freezed,
    Object? isSuspended = freezed,
    Object? appNotificationsLastSeenAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? lastName = freezed,
  }) {
    return _then(
      _$DataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as ProfilePic?,
        qrcode: freezed == qrcode
            ? _value.qrcode
            : qrcode // ignore: cast_nullable_to_non_nullable
                  as Qrcode?,
        isQrCodeGenerated: freezed == isQrCodeGenerated
            ? _value.isQrCodeGenerated
            : isQrCodeGenerated // ignore: cast_nullable_to_non_nullable
                  as bool?,
        dob: freezed == dob
            ? _value.dob
            : dob // ignore: cast_nullable_to_non_nullable
                  as String?,
        firebaseUid: freezed == firebaseUid
            ? _value.firebaseUid
            : firebaseUid // ignore: cast_nullable_to_non_nullable
                  as String?,
        firebaseSignInProvider: freezed == firebaseSignInProvider
            ? _value.firebaseSignInProvider
            : firebaseSignInProvider // ignore: cast_nullable_to_non_nullable
                  as String?,
        isBlocked: freezed == isBlocked
            ? _value.isBlocked
            : isBlocked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isDeleted: freezed == isDeleted
            ? _value.isDeleted
            : isDeleted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isSuspended: freezed == isSuspended
            ? _value.isSuspended
            : isSuspended // ignore: cast_nullable_to_non_nullable
                  as bool?,
        appNotificationsLastSeenAt: freezed == appNotificationsLastSeenAt
            ? _value.appNotificationsLastSeenAt
            : appNotificationsLastSeenAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        v: freezed == v
            ? _value.v
            : v // ignore: cast_nullable_to_non_nullable
                  as int?,
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({
    @JsonKey(name: '_id') this.id,
    this.role,
    this.phone,
    this.email,
    this.profilePic,
    this.qrcode,
    this.isQrCodeGenerated,
    this.dob,
    this.firebaseUid,
    this.firebaseSignInProvider,
    this.isBlocked,
    this.isDeleted,
    this.isSuspended,
    this.appNotificationsLastSeenAt,
    this.createdAt,
    this.updatedAt,
    @JsonKey(name: '__v') this.v,
    this.firstName,
    this.gender,
    this.lastName,
  });

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? role;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final ProfilePic? profilePic;
  @override
  final Qrcode? qrcode;
  @override
  final bool? isQrCodeGenerated;
  @override
  final String? dob;
  @override
  final String? firebaseUid;
  @override
  final String? firebaseSignInProvider;
  @override
  final bool? isBlocked;
  @override
  final bool? isDeleted;
  @override
  final bool? isSuspended;
  @override
  final String? appNotificationsLastSeenAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final String? firstName;
  @override
  final String? gender;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'Data(id: $id, role: $role, phone: $phone, email: $email, profilePic: $profilePic, qrcode: $qrcode, isQrCodeGenerated: $isQrCodeGenerated, dob: $dob, firebaseUid: $firebaseUid, firebaseSignInProvider: $firebaseSignInProvider, isBlocked: $isBlocked, isDeleted: $isDeleted, isSuspended: $isSuspended, appNotificationsLastSeenAt: $appNotificationsLastSeenAt, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, firstName: $firstName, gender: $gender, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.qrcode, qrcode) || other.qrcode == qrcode) &&
            (identical(other.isQrCodeGenerated, isQrCodeGenerated) ||
                other.isQrCodeGenerated == isQrCodeGenerated) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.firebaseSignInProvider, firebaseSignInProvider) ||
                other.firebaseSignInProvider == firebaseSignInProvider) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isSuspended, isSuspended) ||
                other.isSuspended == isSuspended) &&
            (identical(
                  other.appNotificationsLastSeenAt,
                  appNotificationsLastSeenAt,
                ) ||
                other.appNotificationsLastSeenAt ==
                    appNotificationsLastSeenAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    role,
    phone,
    email,
    profilePic,
    qrcode,
    isQrCodeGenerated,
    dob,
    firebaseUid,
    firebaseSignInProvider,
    isBlocked,
    isDeleted,
    isSuspended,
    appNotificationsLastSeenAt,
    createdAt,
    updatedAt,
    v,
    firstName,
    gender,
    lastName,
  ]);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({
    @JsonKey(name: '_id') final String? id,
    final String? role,
    final String? phone,
    final String? email,
    final ProfilePic? profilePic,
    final Qrcode? qrcode,
    final bool? isQrCodeGenerated,
    final String? dob,
    final String? firebaseUid,
    final String? firebaseSignInProvider,
    final bool? isBlocked,
    final bool? isDeleted,
    final bool? isSuspended,
    final String? appNotificationsLastSeenAt,
    final String? createdAt,
    final String? updatedAt,
    @JsonKey(name: '__v') final int? v,
    final String? firstName,
    final String? gender,
    final String? lastName,
  }) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get role;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  ProfilePic? get profilePic;
  @override
  Qrcode? get qrcode;
  @override
  bool? get isQrCodeGenerated;
  @override
  String? get dob;
  @override
  String? get firebaseUid;
  @override
  String? get firebaseSignInProvider;
  @override
  bool? get isBlocked;
  @override
  bool? get isDeleted;
  @override
  bool? get isSuspended;
  @override
  String? get appNotificationsLastSeenAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  String? get firstName;
  @override
  String? get gender;
  @override
  String? get lastName;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Qrcode _$QrcodeFromJson(Map<String, dynamic> json) {
  return _Qrcode.fromJson(json);
}

/// @nodoc
mixin _$Qrcode {
  String? get key => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this Qrcode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Qrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrcodeCopyWith<Qrcode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrcodeCopyWith<$Res> {
  factory $QrcodeCopyWith(Qrcode value, $Res Function(Qrcode) then) =
      _$QrcodeCopyWithImpl<$Res, Qrcode>;
  @useResult
  $Res call({String? key, String? url, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$QrcodeCopyWithImpl<$Res, $Val extends Qrcode>
    implements $QrcodeCopyWith<$Res> {
  _$QrcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Qrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QrcodeImplCopyWith<$Res> implements $QrcodeCopyWith<$Res> {
  factory _$$QrcodeImplCopyWith(
    _$QrcodeImpl value,
    $Res Function(_$QrcodeImpl) then,
  ) = __$$QrcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? url, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$QrcodeImplCopyWithImpl<$Res>
    extends _$QrcodeCopyWithImpl<$Res, _$QrcodeImpl>
    implements _$$QrcodeImplCopyWith<$Res> {
  __$$QrcodeImplCopyWithImpl(
    _$QrcodeImpl _value,
    $Res Function(_$QrcodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Qrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _$QrcodeImpl(
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QrcodeImpl implements _Qrcode {
  const _$QrcodeImpl({this.key, this.url, @JsonKey(name: '_id') this.id});

  factory _$QrcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrcodeImplFromJson(json);

  @override
  final String? key;
  @override
  final String? url;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Qrcode(key: $key, url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrcodeImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, url, id);

  /// Create a copy of Qrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrcodeImplCopyWith<_$QrcodeImpl> get copyWith =>
      __$$QrcodeImplCopyWithImpl<_$QrcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrcodeImplToJson(this);
  }
}

abstract class _Qrcode implements Qrcode {
  const factory _Qrcode({
    final String? key,
    final String? url,
    @JsonKey(name: '_id') final String? id,
  }) = _$QrcodeImpl;

  factory _Qrcode.fromJson(Map<String, dynamic> json) = _$QrcodeImpl.fromJson;

  @override
  String? get key;
  @override
  String? get url;
  @override
  @JsonKey(name: '_id')
  String? get id;

  /// Create a copy of Qrcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrcodeImplCopyWith<_$QrcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePic _$ProfilePicFromJson(Map<String, dynamic> json) {
  return _ProfilePic.fromJson(json);
}

/// @nodoc
mixin _$ProfilePic {
  String? get key => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ProfilePic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePicCopyWith<ProfilePic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePicCopyWith<$Res> {
  factory $ProfilePicCopyWith(
    ProfilePic value,
    $Res Function(ProfilePic) then,
  ) = _$ProfilePicCopyWithImpl<$Res, ProfilePic>;
  @useResult
  $Res call({String? key, String? url, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$ProfilePicCopyWithImpl<$Res, $Val extends ProfilePic>
    implements $ProfilePicCopyWith<$Res> {
  _$ProfilePicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfilePicImplCopyWith<$Res>
    implements $ProfilePicCopyWith<$Res> {
  factory _$$ProfilePicImplCopyWith(
    _$ProfilePicImpl value,
    $Res Function(_$ProfilePicImpl) then,
  ) = __$$ProfilePicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? url, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$ProfilePicImplCopyWithImpl<$Res>
    extends _$ProfilePicCopyWithImpl<$Res, _$ProfilePicImpl>
    implements _$$ProfilePicImplCopyWith<$Res> {
  __$$ProfilePicImplCopyWithImpl(
    _$ProfilePicImpl _value,
    $Res Function(_$ProfilePicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfilePic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _$ProfilePicImpl(
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePicImpl implements _ProfilePic {
  const _$ProfilePicImpl({this.key, this.url, @JsonKey(name: '_id') this.id});

  factory _$ProfilePicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePicImplFromJson(json);

  @override
  final String? key;
  @override
  final String? url;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'ProfilePic(key: $key, url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePicImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, url, id);

  /// Create a copy of ProfilePic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePicImplCopyWith<_$ProfilePicImpl> get copyWith =>
      __$$ProfilePicImplCopyWithImpl<_$ProfilePicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePicImplToJson(this);
  }
}

abstract class _ProfilePic implements ProfilePic {
  const factory _ProfilePic({
    final String? key,
    final String? url,
    @JsonKey(name: '_id') final String? id,
  }) = _$ProfilePicImpl;

  factory _ProfilePic.fromJson(Map<String, dynamic> json) =
      _$ProfilePicImpl.fromJson;

  @override
  String? get key;
  @override
  String? get url;
  @override
  @JsonKey(name: '_id')
  String? get id;

  /// Create a copy of ProfilePic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePicImplCopyWith<_$ProfilePicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
