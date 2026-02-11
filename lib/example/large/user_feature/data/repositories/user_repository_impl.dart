/// LARGE: Data - Repo converts Model -> Entity before returning.
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_local_data_source.dart';
import '../datasources/user_remote_data_source.dart';
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
      final model = UserModel.fromJson(cached);
      return ApiResponse(success: true, data: UserMapper.toEntity(model));
    }
    final response = await _remote.getUserProfile();
    if (response.success && response.data != null) {
      await _local.save('user_profile', response.data!.toJson());
      return ApiResponse(success: true, data: UserMapper.toEntity(response.data!));
    }
    return ApiResponse(success: response.success, data: null);
  }

  @override
  Future<ApiResponse<UserEntity>> refreshUserProfile() async {
    await _local.remove('user_profile');
    final response = await _remote.getUserProfile();
    if (response.success && response.data != null) {
      return ApiResponse(success: true, data: UserMapper.toEntity(response.data!));
    }
    return ApiResponse(success: response.success, data: null);
  }
}
