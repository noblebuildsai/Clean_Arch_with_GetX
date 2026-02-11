/// LARGE: Data - Remote returns MODEL (DTO).
import '../../domain/repositories/user_repository.dart';
import '../models/user_model.dart';

class UserRemoteDataSource {
  Future<ApiResponse<UserModel>> getUserProfile() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return ApiResponse(
      success: true,
      data: UserModel(id: '1', name: 'John', email: 'john@test.com'),
    );
  }
}
