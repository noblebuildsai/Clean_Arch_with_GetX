import '../../../../models/user_model.dart';
import '../../../../services/dio/api_response.dart';

/// Domain layer - abstract repository contract.
/// Presentation depends on this, not on data layer implementation.
abstract class HomeRepository {
  /// Get user profile (with caching when available).
  Future<ApiResponse<UserModel>> getUserProfile();

  /// Force refresh user profile (bypass cache).
  Future<ApiResponse<UserModel>> refreshUserProfile();

  /// Clear user profile cache.
  Future<void> clearUserProfileCache();
}
