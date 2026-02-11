/// ENTERPRISE: Domain - Use case.
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class RefreshUserProfileUseCase {
  final UserRepository _repo;
  RefreshUserProfileUseCase(this._repo);
  Future<ApiResponse<UserEntity>> call() => _repo.refreshUserProfile();
}
