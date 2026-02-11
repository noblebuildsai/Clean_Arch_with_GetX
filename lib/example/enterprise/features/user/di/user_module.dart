/// ENTERPRISE: Feature DI module. Registers all deps for this feature.
import 'package:get/get.dart';

import '../data/datasources/local/user_local_data_source.dart';
import '../data/datasources/remote/user_remote_data_source.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/use_cases/get_user_profile_use_case.dart';
import '../domain/use_cases/refresh_user_profile_use_case.dart';
import '../presentation/controllers/user_controller.dart';

class UserModule {
  static void init() {
    Get.lazyPut<UserRemoteDataSource>(() => UserRemoteDataSource(), fenix: true);
    Get.lazyPut<UserLocalDataSource>(() => UserLocalDataSource(), fenix: true);
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(
        remote: Get.find<UserRemoteDataSource>(),
        local: Get.find<UserLocalDataSource>(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetUserProfileUseCase>(() => GetUserProfileUseCase(Get.find()), fenix: true);
    Get.lazyPut<RefreshUserProfileUseCase>(() => RefreshUserProfileUseCase(Get.find()), fenix: true);
    Get.lazyPut<UserController>(() => UserController(), fenix: true);
  }
}
