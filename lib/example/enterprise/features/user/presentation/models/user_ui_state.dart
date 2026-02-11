/// ENTERPRISE: Presentation - UI state model.
import '../../domain/entities/user_entity.dart';

class UserUiState {
  final bool isLoading;
  final UserEntity? user;
  final String? error;

  UserUiState({this.isLoading = false, this.user, this.error});

  UserUiState copyWith({bool? isLoading, UserEntity? user, String? error}) {
    return UserUiState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      error: error ?? this.error,
    );
  }
}
