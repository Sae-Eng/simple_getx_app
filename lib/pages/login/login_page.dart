import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:simple_getx_app/pages/login/login_controller.dart';
import 'package:simple_getx_app/routes/app_routes.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Simple GetX',
      onLogin: controller.authUser,
      userValidator: controller.userValidator,
      passwordValidator: controller.passwordValidator,
      onSignup: controller.signupUser,
      onSubmitAnimationCompleted: () {
        Get.toNamed(AppRoutes.NAVIGATION);
      },
      onRecoverPassword: controller.recoverPassword,
      hideForgotPasswordButton: true,
      messages: LoginMessages(
        userHint: 'メールアドレス',
        passwordHint: 'パスワード',
        confirmPasswordHint: '確認用パスワード',
        loginButton: 'ログイン',
        signupButton: 'ユーザー登録',
        confirmPasswordError: 'パスワードが一致しません。',
      ),
    );
  }
}
