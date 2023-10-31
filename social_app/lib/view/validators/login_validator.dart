import 'package:email_validator/email_validator.dart';

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
