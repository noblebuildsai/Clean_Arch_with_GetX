/// SMALL: Presentation - Controller calls repository directly.
import 'package:get/get.dart';

import '../domain/repositories/user_repository.dart'; // User, ApiResponse also here

class UserController extends GetxController {
  final UserRepository _repository = Get.find<UserRepository>();

  final RxBool isLoading = true.obs;
  final Rxn<User> userProfile = Rxn<User>();

  @override
  void onReady() {
    super.onReady();
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    isLoading.value = true;
    try {
      final response = await _repository.getUserProfile();
      if (response.success) {
        userProfile.value = response.data;
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshProfile() async {
    isLoading.value = true;
    try {
      final response = await _repository.refreshUserProfile();
      if (response.success) {
        userProfile.value = response.data;
      }
    } finally {
      isLoading.value = false;
    }
  }
}
