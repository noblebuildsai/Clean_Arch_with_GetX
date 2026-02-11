/// ENTERPRISE: Presentation - Binding delegates to feature module.
import 'package:get/get.dart';

import '../../di/user_module.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    UserModule.init();
  }
}
