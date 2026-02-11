/// MEDIUM: Presentation - View (same as small).
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value && controller.userProfile.value == null) {
          return const Center(child: CircularProgressIndicator());
        }
        final user = controller.userProfile.value;
        return Center(child: Text(user != null ? 'Hello, ${user.name}!' : 'No user'));
      }),
    );
  }
}
