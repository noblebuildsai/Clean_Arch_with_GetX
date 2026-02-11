import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../data/datasources/home_local_data_source.dart';
import '../data/datasources/home_remote_data_source.dart';
import '../data/repositories/home_repository_impl.dart';
import '../domain/repositories/home_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemoteDataSource>(() => HomeRemoteDataSource(), fenix: true);
    Get.lazyPut<HomeLocalDataSource>(() => HomeLocalDataSource(), fenix: true);

    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(
        remoteDataSource: Get.find<HomeRemoteDataSource>(),
        localDataSource: Get.find<HomeLocalDataSource>(),
      ),
      fenix: true,
    );

    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
