import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:sanber_app_batch_56/controller/user_controller.dart';
import 'package:sanber_app_batch_56/routes/app_routes_named.dart';
import 'package:sanber_app_batch_56/service/user_service.dart';

import '../../model/users_model.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userC = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: GetBuilder(
        init: userC,
        builder: (_) {
          return ListView.builder(
            itemCount: userC.users.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                      '${userC.users[index].fistName} ${userC.users[index].lastName}'),
                  leading: Image.network(userC.users[index].avatar),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            Get.offNamed(AppRoutesNamed.pageDua);
          },
          child: Text("lanjut Ke halaman 2")),
    );
  }
}
