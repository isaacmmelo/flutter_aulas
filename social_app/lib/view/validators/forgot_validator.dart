import 'package:email_validator/email_validator.dart';

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'E-mail é obrigatório';
  } else if (EmailValidator.validate(value) == false) {
    return 'Digite um e-mail válido';
  }
  return null;
}
