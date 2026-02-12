import '../models/user_model.dart';
import '../../../../services/dio/api_response.dart';
import '../../../../services/dio/repository.dart';

import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_data_source.dart';
import '../datasources/home_remote_data_source.dart';

/// Data layer - repository implementation.
/// Implements domain [HomeRepository] and extends base [Repository].
class HomeRepositoryImpl extends Repository implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;
  final HomeLocalDataSource? _localDataSource;

  HomeRepositoryImpl({
    required HomeRemoteDataSource remoteDataSource,
    HomeLocalDataSource? localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        super(
          remoteDataSource: remoteDataSource,
          localDataSource: localDataSource,
        );

  @override
  Future<ApiResponse<UserModel>> getUserProfile() async {
    return executeWithCache<UserModel>(
      remoteCall: () => _remoteDataSource.getUserProfile(),
      cacheKey: _localDataSource != null ? 'home_user_profile' : null,
      cacheDuration: _localDataSource != null
          ? const Duration(minutes: 5)
          : null,
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
      toEncodable: (model) => model.toJson(),
    );
  }

  @override
  Future<ApiResponse<UserModel>> refreshUserProfile() async {
    if (_localDataSource != null) {
      await clearCache('home_user_profile');
    }
    return _remoteDataSource.getUserProfile();
  }

  @override
  Future<ApiResponse<UserModel>> createUserProfile(Map<String, dynamic> data) async {
    final response = await _remoteDataSource.createUserProfile(data);
    
    if (response.success && _localDataSource != null) {
      await clearCache('home_user_profile');
    }
    
    return response;
  }

  @override
  Future<ApiResponse<UserModel>> updateUserProfile(Map<String, dynamic> data) async {
    final response = await _remoteDataSource.updateUserProfile(data);
    
    if (response.success && _localDataSource != null) {
      await clearCache('home_user_profile');
    }
    
    return response;
  }

  @override
  Future<ApiResponse<void>> deleteUserProfile() async {
    final response = await _remoteDataSource.deleteUserProfile();
    
    if (response.success && _localDataSource != null) {
      await clearCache('home_user_profile');
      await _localDataSource.clearUserProfileCache();
    }
    
    return response;
  }

  @override
  Future<void> clearUserProfileCache() async {
    if (_localDataSource != null) {
      await _localDataSource.clearUserProfileCache();
    }
    await clearAllCache();
  }
}
