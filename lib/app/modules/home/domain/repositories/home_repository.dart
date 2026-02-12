import '../../data/models/user_model.dart';
import '../../../../services/dio/api_response.dart';

/// Domain layer - abstract repository contract.
/// Presentation depends on this, not on data layer implementation.
abstract class HomeRepository {
  /// Get user profile (with caching when available).
  Future<ApiResponse<UserModel>> getUserProfile();

  /// Force refresh user profile (bypass cache).
  Future<ApiResponse<UserModel>> refreshUserProfile();

  /// Create or update user profile (POST).
  Future<ApiResponse<UserModel>> createUserProfile(Map<String, dynamic> data);

  /// Partial update user profile (PATCH).
  Future<ApiResponse<UserModel>> updateUserProfile(Map<String, dynamic> data);

  /// Delete user profile or resource (DELETE).
  Future<ApiResponse<void>> deleteUserProfile();

  /// Clear user profile cache.
  Future<void> clearUserProfileCache();
}
