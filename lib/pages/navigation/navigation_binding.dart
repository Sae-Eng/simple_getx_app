import 'package:get/get.dart';
import 'package:simple_getx_app/pages/setting/setting_controller.dart';

import '../home/home_controller.dart';
import 'navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
