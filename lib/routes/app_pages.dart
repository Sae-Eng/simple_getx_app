import 'package:get/route_manager.dart';
import 'package:simple_getx_app/pages/login/login_binding.dart';
import 'package:simple_getx_app/pages/login/login_page.dart';
import 'package:simple_getx_app/pages/navigation/navigation_binding.dart';
import 'package:simple_getx_app/pages/navigation/navigation_page.dart';
import 'package:simple_getx_app/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.NAVIGATION,
      page: () => NavigationPage(),
      binding: NavigationBinding(),
    ),
  ];
}
