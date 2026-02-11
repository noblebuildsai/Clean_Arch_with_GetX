/// ENTERPRISE: Domain - Use case.
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUserProfileUseCase {
  final UserRepository _repo;
  GetUserProfileUseCase(this._repo);
  Future<ApiResponse<UserEntity>> call() => _repo.getUserProfile();
}
