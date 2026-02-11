/// LARGE: Domain - Repository returns ENTITY, not model.
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<ApiResponse<UserEntity>> getUserProfile();
  Future<ApiResponse<UserEntity>> refreshUserProfile();
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  ApiResponse({required this.success, this.data});
}
