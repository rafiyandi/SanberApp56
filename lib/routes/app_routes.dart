import 'package:get/get.dart';
import 'package:sanber_app_batch_56/bindings/user_binding.dart';
import 'package:sanber_app_batch_56/pages/nav/page_dua.dart';
import 'package:sanber_app_batch_56/pages/nav/page_satu.dart';
import 'package:sanber_app_batch_56/pages/users/users_page.dart';
import 'package:sanber_app_batch_56/routes/app_routes_named.dart';

class AppRoute {
  static final routes = [
    GetPage(name: AppRoutesNamed.initialPage, page: () => PageSatu()),
    GetPage(name: AppRoutesNamed.pageDua, page: () => PageDua()),
    GetPage(
      name: AppRoutesNamed.users,
      page: () => UsersPage(),
      bindings: [
        UserBinding(),
      ],
    ),
  ];
}
