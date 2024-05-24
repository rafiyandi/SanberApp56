import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sanber_app_batch_56/model/users_model.dart';
import 'package:sanber_app_batch_56/service/user_service.dart';

class UserController extends GetxController {
  List<UsersModel> users = [];

  @override
  void onInit() {
    fetchDataUser();
    super.onInit();
  }

  Future<void> fetchDataUser() async {
    users = await UserService().fetchDataUser();
    print("data ${users.length}");
    update();
  }
}
