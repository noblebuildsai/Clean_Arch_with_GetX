/// SMALL: Domain - Repository interface only.
/// Controller depends on this, not the implementation.

// In real app: import from app/models and app/services/dio
abstract class UserRepository {
  Future<ApiResponse<User>> getUserProfile();
  Future<ApiResponse<User>> refreshUserProfile();
}

// Stub types (use your app's UserModel, ApiResponse in real code)
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
