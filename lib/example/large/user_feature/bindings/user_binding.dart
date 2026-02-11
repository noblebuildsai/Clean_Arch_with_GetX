/// LARGE: DI.
import 'package:get/get.dart';

import '../controllers/user_controller.dart';
import '../data/datasources/user_local_data_source.dart';
import '../data/datasources/user_remote_data_source.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/use_cases/get_user_profile_use_case.dart';
import '../domain/use_cases/refresh_user_profile_use_case.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRemoteDataSource>(() => UserRemoteDataSource(), fenix: true);
    Get.lazyPut<UserLocalDataSource>(() => UserLocalDataSource(), fenix: true);
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(
        remote: Get.find<UserRemoteDataSource>(),
        local: Get.find<UserLocalDataSource>(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetUserProfileUseCase>(() => GetUserProfileUseCase(Get.find<UserRepository>()), fenix: true);
    Get.lazyPut<RefreshUserProfileUseCase>(() => RefreshUserProfileUseCase(Get.find<UserRepository>()), fenix: true);
    Get.lazyPut<UserController>(() => UserController(), fenix: true);
  }
}
