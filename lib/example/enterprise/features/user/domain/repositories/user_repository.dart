/// ENTERPRISE: Domain - Repository.
import '../entities/user_entity.dart'; // UserEntity for return type

abstract class UserRepository {
  Future<ApiResponse<UserEntity>> getUserProfile();
  Future<ApiResponse<UserEntity>> refreshUserProfile();
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  ApiResponse({required this.success, this.data});
}
