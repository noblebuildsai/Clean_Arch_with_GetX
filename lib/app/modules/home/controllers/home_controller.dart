import 'package:get/get.dart';

import '../../../models/user_model.dart';
import '../domain/repositories/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository _repository = Get.find<HomeRepository>();

  final RxBool isLoading = true.obs;
  final Rxn<UserModel> userProfile = Rxn<UserModel>();

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
