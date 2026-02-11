import '../../../../models/user_model.dart';
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
}
