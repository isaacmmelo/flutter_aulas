import 'package:flutter/material.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class UserController {
  Future<bool> userRegister(
    TextEditingController controllerUsername,
    TextEditingController controllerEmail,
    TextEditingController controllerPassword,
  ) async {
    final username = controllerUsername.text.trim();
    final email = controllerEmail.text.trim();
    final password = controllerPassword.text.trim();

    final user = ParseUser.createUser(username, password, email);

    var response = await user.signUp();

    if (response.success) {
      return true;
    } else {
      return false;
    }
  }
}
