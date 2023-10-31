import 'dart:developer';
import 'package:email_validator/email_validator.dart';

bool confirmPassword(String pass1, String pass2) {
  if (pass1 == pass2) {
    return true;
  } else {
    return false;
  }
}

String? validateUserName(String? value) {
  String pattern = r'(^[a-zA-Z0-9 ]*$)';
  RegExp regExp = RegExp(pattern);
  // ignore: unnecessary_null_comparison
  if (value == null || value.isEmpty) {
    log('em branco');
    return 'Nome é obrigatório';
  } else if (!regExp.hasMatch(value)) {
    log('especiais');
    return 'Não pode conter caracteres especiais';
  }
  log('deu certo');
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'E-mail é obrigatório';
  } else if (EmailValidator.validate(value) == false) {
    return 'Digite um e-mail válido';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Senha é obrigatório';
  } else if (value.length <= 4) {
    return 'A senha deve ser maior que 04 caracteres';
  }
  return null;
}

String? validateConfirmPassword(String? value, String? value2) {
  if (value == null || value.isEmpty) {
    return 'A confirmação de senha é obrigatória';
  } else if (value != value2) {
    return 'As senhas não são iguais';
  }
  return null;
}
