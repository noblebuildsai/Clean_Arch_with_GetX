/// MEDIUM: Domain - Repository interface.
abstract class UserRepository {
  Future<ApiResponse<User>> getUserProfile();
  Future<ApiResponse<User>> refreshUserProfile();
}

class User {
  final String id;
  final String name;
  final String? email;
  User({required this.id, required this.name, this.email});
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  ApiResponse({required this.success, this.data});
}
