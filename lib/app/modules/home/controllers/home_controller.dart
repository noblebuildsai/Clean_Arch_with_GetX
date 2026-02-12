import 'package:get/get.dart';

import '../data/models/user_model.dart';
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

  Future<bool> createUserProfile(Map<String, dynamic> data) async {
    isLoading.value = true;
    try {
      final response = await _repository.createUserProfile(data);
      if (response.success) {
        await loadUserProfile();
        return true;
      }
      return false;
    } finally {
      isLoading.value = false;
    }
  }

  Future<bool> updateUserProfile(Map<String, dynamic> data) async {
    isLoading.value = true;
    try {
      final response = await _repository.updateUserProfile(data);
      if (response.success) {
        await loadUserProfile();
        return true;
      }
      return false;
    } finally {
      isLoading.value = false;
    }
  }


  Future<bool> deleteUserProfile() async {
    isLoading.value = true;
    try {
      final response = await _repository.deleteUserProfile();
      if (response.success) {
        userProfile.value = null;
        // Or call GET if you want to fetch updated state:
        // await loadUserProfile();
        return true;
      }
      return false;
    } finally {
      isLoading.value = false;
    }
  }
}
