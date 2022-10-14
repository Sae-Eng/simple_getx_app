import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:simple_getx_app/pages/setting/setting_controller.dart';

class SettingPage extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('アカウント'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.email),
                title: Text('メールアドレス'),
                value: Text('simple_getx_app@flutter.com'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.password),
                title: Text('パスワード'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
