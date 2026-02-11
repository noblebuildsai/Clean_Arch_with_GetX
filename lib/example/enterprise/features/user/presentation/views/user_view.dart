/// ENTERPRISE: Presentation - View uses UI state.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final state = controller.uiState.value;
        if (state.isLoading && state.user == null) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.error != null) {
          return Center(child: Text('Error: ${state.error}'));
        }
        return Center(child: Text(state.user != null ? 'Hello, ${state.user!.name}!' : 'No user'));
      }),
    );
  }
}
