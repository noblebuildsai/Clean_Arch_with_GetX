/// MEDIUM: Domain - Use case. One per business action.
/// Controller calls THIS, not repository directly.
import '../repositories/user_repository.dart';

class GetUserProfileUseCase {
  final UserRepository _repository;
  GetUserProfileUseCase(this._repository);

  Future<ApiResponse<User>> call() => _repository.getUserProfile();
}
