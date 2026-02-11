/// LARGE: Domain - Use case.
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUserProfileUseCase {
  final UserRepository _repository;
  GetUserProfileUseCase(this._repository);
  Future<ApiResponse<UserEntity>> call() => _repository.getUserProfile();
}
