/// MEDIUM: Domain - Use case.
import '../repositories/user_repository.dart';

class RefreshUserProfileUseCase {
  final UserRepository _repository;
  RefreshUserProfileUseCase(this._repository);

  Future<ApiResponse<User>> call() => _repository.refreshUserProfile();
}
