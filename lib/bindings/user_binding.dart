import 'package:get/instance_manager.dart';
import 'package:sanber_app_batch_56/controller/user_controller.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
