import 'package:flutter_login/flutter_login.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  var users = {
    'test1@test.com': '12345',
    'test2@test.com': 'test1234',
  };

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'ユーザーが存在しません。';
      }
      if (users[data.name] != data.password) {
        return 'パスワードが間違えています。';
      }
      return null;
    });
  }

  Future<String?> signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'ユーザーが存在しません。';
      }
      return null;
    });
  }

  String? userValidator(value) {
    if (value!.isEmpty) {
      return 'メールアドレスを入力してください。';
    }
    if (!value!.contains('@')) {
      return 'メールアドレスには@を加えてください。';
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value!.isEmpty) {
      return 'パスワードを入力してください。';
    }
    return null;
  }
}
