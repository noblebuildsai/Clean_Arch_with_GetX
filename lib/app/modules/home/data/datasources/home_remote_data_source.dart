import '../models/user_model.dart';
import '../../../../services/dio/api_response.dart';
import '../../../../services/dio/endpoints.dart';
import '../../../../services/dio/remote_data_source.dart';

/// Remote data source for Home module API calls.
class HomeRemoteDataSource extends RemoteDataSource {

  Future<ApiResponse<UserModel>> getUserProfile() async {
    return get<UserModel>(
      endpoint: Endpoints.apiPath('users/profile'),
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
    );
  }

  Future<ApiResponse<UserModel>> createUserProfile(Map<String, dynamic> data) async {
    return post<UserModel>(
      endpoint: Endpoints.apiPath('users/profile'),
      body: data,
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
    );
  }

  Future<ApiResponse<UserModel>> updateUserProfile(Map<String, dynamic> data) async {
    return patch<UserModel>(
      endpoint: Endpoints.apiPath('users/profile'),
      body: data,
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
    );
  }

  Future<ApiResponse<void>> deleteUserProfile() async {
    return delete<void>(
      endpoint: Endpoints.apiPath('users/profile'),
      parser: (_) {},
    );
  }
  
}
