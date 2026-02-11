/// ENTERPRISE: Data - Repository impl.
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/local/user_local_data_source.dart';
import '../datasources/remote/user_remote_data_source.dart';
import '../mappers/user_mapper.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remote;
  final UserLocalDataSource _local;

  UserRepositoryImpl({required UserRemoteDataSource remote, required UserLocalDataSource local})
      : _remote = remote,
        _local = local;

  @override
  Future<ApiResponse<UserEntity>> getUserProfile() async {
    final cached = _local.get<Map<String, dynamic>>('user_profile');
    if (cached != null) {
      return ApiResponse(success: true, data: UserMapper.toEntity(UserModel.fromJson(cached)));
    }
    final res = await _remote.getUserProfile();
    if (res.success && res.data != null) {
      await _local.save('user_profile', res.data!.toJson());
      return ApiResponse(success: true, data: UserMapper.toEntity(res.data!));
    }
    return ApiResponse(success: res.success, data: null);
  }

  @override
  Future<ApiResponse<UserEntity>> refreshUserProfile() async {
    await _local.remove('user_profile');
    final res = await _remote.getUserProfile();
    return ApiResponse(success: res.success, data: res.data != null ? UserMapper.toEntity(res.data!) : null);
  }
}
