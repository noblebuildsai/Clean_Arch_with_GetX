/// MEDIUM: Data - Remote (same as small).
import '../../domain/repositories/user_repository.dart';

class UserRemoteDataSource {
  Future<ApiResponse<User>> getUserProfile() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return ApiResponse(
      success: true,
      data: User(id: '1', name: 'John', email: 'john@test.com'),
    );
  }
}
