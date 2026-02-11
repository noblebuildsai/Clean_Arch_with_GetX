/// SMALL: Data - Remote API calls.
/// Extends base RemoteDataSource (Dio) in real app.
import '../../domain/repositories/user_repository.dart';

class UserRemoteDataSource {
  Future<ApiResponse<User>> getUserProfile() async {
    // Real: return get<User>(endpoint: Endpoints.apiPath('users/profile'), ...);
    await Future.delayed(const Duration(milliseconds: 100));
    return ApiResponse(
      success: true,
      data: User(id: '1', name: 'John', email: 'john@test.com'),
    );
  }
}
