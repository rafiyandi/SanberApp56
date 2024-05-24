import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_batch_56/pages/users/users_page.dart';
import 'package:sanber_app_batch_56/routes/app_routes_named.dart';

import '../../controller/user_controller.dart';
import 'page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    // var userC = Get.lazyPut(() => UserController());
    // // var userC = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PageDua(),
                  //     ));
                  // Get.to(() => PageDua());
                  Get.toNamed(AppRoutesNamed.users);
                },
                child: Text('NEXT PAGE User ==>>>'))
          ],
        ),
      ),
    );
  }
}
