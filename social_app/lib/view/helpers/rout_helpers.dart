import 'package:flutter/material.dart';

void goToLogin(context) {
  Navigator.pushNamed(context, '/login');
}

void goToRegister(context) {
  Navigator.pushNamed(context, '/register');
}

void goToForgotPass(context) {
  Navigator.pushNamed(context, '/forgotPass');
}

void goToHome(context) {
  Navigator.pushNamed(context, '/homePage');
}
