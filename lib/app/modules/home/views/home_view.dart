import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_freezed_test/app/services/responsive_size.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value && controller.userProfile.value == null) {
          return const Center(child: CircularProgressIndicator());
        }

        final user = controller.userProfile.value?.data;
        return RefreshIndicator(
          onRefresh: controller.refreshProfile,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (user != null) ...[
                      Text(
                        'Hello, ${user.firstName ?? 'User'}!',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      if (user.email != null) Text(user.email!),
                      16.kheightBox,
                    ] else
                      const Text('Not logged in'),
                    16.kheightBox,
                    ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.CHAT_SCREEN),
                      child: const Text('Open Chat'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
