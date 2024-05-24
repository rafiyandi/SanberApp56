import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sanber_app_batch_56/bindings/user_binding.dart';
import 'package:sanber_app_batch_56/pages/counter/counter_statefull_page.dart';
import 'package:sanber_app_batch_56/pages/counter/counter_stateless_page.dart';
import 'package:sanber_app_batch_56/pages/example_colomn_row.dart';
import 'package:sanber_app_batch_56/pages/nav/page_dua.dart';
import 'package:sanber_app_batch_56/pages/nav/page_empat.dart';
import 'package:sanber_app_batch_56/pages/nav/page_satu.dart';
import 'package:sanber_app_batch_56/pages/nav/page_tiga.dart';
import 'package:sanber_app_batch_56/pages/users/users_page.dart';
import 'package:sanber_app_batch_56/routes/app_routes.dart';

import 'pages/home_page.dart';
import 'widgets/custom_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoute.routes,
      // initialBinding: UserBinding(),
      // routes: {
      //   '/': (context) => PageSatu(),
      //   '/page-dua': (context) => PageDua(),
      //   '/page-tiga': (context) => PageTiga(),
      //   '/page-empat': (context) => PageEmpat(),
      // },
    );
  }
}
