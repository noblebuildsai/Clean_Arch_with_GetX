/// SMALL: Presentation - DI binding.
import 'package:get/get.dart';

import '../controllers/user_controller.dart';
import '../data/datasources/user_local_data_source.dart';
import '../data/datasources/user_remote_data_source.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/repositories/user_repository.dart';

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
    Get.lazyPut<UserController>(() => UserController(), fenix: true);
  }
}
