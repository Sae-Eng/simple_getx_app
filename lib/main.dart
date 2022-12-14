import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_getx_app/routes/app_pages.dart';
import 'package:simple_getx_app/routes/app_routes.dart';
import 'package:simple_getx_app/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Simple GetX App",
      initialRoute: AppRoutes.LOGIN,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
