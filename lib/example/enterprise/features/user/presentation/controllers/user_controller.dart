/// ENTERPRISE: Presentation - Controller with UI state.
import 'package:get/get.dart';

import '../../domain/use_cases/get_user_profile_use_case.dart';
import '../../domain/use_cases/refresh_user_profile_use_case.dart';
import '../models/user_ui_state.dart';

class UserController extends GetxController {
  final GetUserProfileUseCase _getProfile = Get.find<GetUserProfileUseCase>();
  final RefreshUserProfileUseCase _refreshProfile = Get.find<RefreshUserProfileUseCase>();

  final Rx<UserUiState> uiState = UserUiState().obs;

  @override
  void onReady() {
    super.onReady();
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    uiState.value = uiState.value.copyWith(isLoading: true, error: null);
    try {
      final res = await _getProfile();
      if (res.success && res.data != null) {
        uiState.value = uiState.value.copyWith(isLoading: false, user: res.data);
      }
    } catch (e) {
      uiState.value = uiState.value.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> refreshProfile() async {
    uiState.value = uiState.value.copyWith(isLoading: true);
    try {
      final res = await _refreshProfile();
      if (res.success) uiState.value = uiState.value.copyWith(isLoading: false, user: res.data);
    } finally {
      uiState.value = uiState.value.copyWith(isLoading: false);
    }
  }
}
