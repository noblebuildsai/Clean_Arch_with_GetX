import '../models/user_model.dart';
import '../../../../services/dio/local_data_source.dart';

/// Local data source for Home module caching.
class HomeLocalDataSource extends LocalDataSource {

  static const String _userProfileCacheKey = 'home_user_profile_cache';

  Future<void> cacheUserProfile(UserModel user) async {
    await save(_userProfileCacheKey, user.toJson());
  }

  UserModel? getCachedUserProfile() {
    final data = get<Map<String, dynamic>>(_userProfileCacheKey);
    if (data != null) {
      return UserModel.fromJson(data);
    }
    return null;
  }

  Future<void> clearUserProfileCache() async {
    await remove(_userProfileCacheKey);
  }
  
}
