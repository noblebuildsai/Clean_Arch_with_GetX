/// LARGE: Presentation - Uses Entity (clean domain type).
import 'package:get/get.dart';

import '../domain/entities/user_entity.dart';
import '../domain/use_cases/get_user_profile_use_case.dart';
import '../domain/use_cases/refresh_user_profile_use_case.dart';

class UserController extends GetxController {
  final GetUserProfileUseCase _getUserProfile = Get.find<GetUserProfileUseCase>();
  final RefreshUserProfileUseCase _refreshProfile = Get.find<RefreshUserProfileUseCase>();

  final RxBool isLoading = true.obs;
  final Rxn<UserEntity> userProfile = Rxn<UserEntity>();

  @override
  void onReady() {
    super.onReady();
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    isLoading.value = true;
    try {
      final response = await _getUserProfile();
      if (response.success) userProfile.value = response.data;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshProfile() async {
    isLoading.value = true;
    try {
      final response = await _refreshProfile();
      if (response.success) userProfile.value = response.data;
    } finally {
      isLoading.value = false;
    }
  }
}
