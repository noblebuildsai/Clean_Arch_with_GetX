/// MEDIUM: Data - Repository impl (same as small).
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_local_data_source.dart';
import '../datasources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remote;
  final UserLocalDataSource _local;

  UserRepositoryImpl({required UserRemoteDataSource remote, required UserLocalDataSource local})
      : _remote = remote,
        _local = local;

  @override
  Future<ApiResponse<User>> getUserProfile() async {
    final cached = _local.get<Map<String, dynamic>>('user_profile');
    if (cached != null) {
      return ApiResponse(
        success: true,
        data: User(id: cached['id'] as String, name: cached['name'] as String, email: cached['email'] as String?),
      );
    }
    final response = await _remote.getUserProfile();
    if (response.success && response.data != null) {
      await _local.save('user_profile', {'id': response.data!.id, 'name': response.data!.name, 'email': response.data!.email});
    }
    return response;
  }

  @override
  Future<ApiResponse<User>> refreshUserProfile() async {
    await _local.remove('user_profile');
    return _remote.getUserProfile();
  }
}
