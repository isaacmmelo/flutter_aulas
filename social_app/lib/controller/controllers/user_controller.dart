import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class UserController {
  late String errorCode;

  //Função de registrar usuário
  Future<bool> userRegister(
    //Construtores do formulário
    TextEditingController controllerUsername,
    TextEditingController controllerEmail,
    TextEditingController controllerPassword,
    TextEditingController controllerFullName,
  ) async {
    //Definindo variáveis finais de usuário
    final String username = controllerUsername.text.trim();
    final String email = controllerEmail.text.trim();
    final String password = controllerPassword.text.trim();
    final String fullName = controllerFullName.text.trim();

    /* ---- 
      O NOSSO BANCO DE DADOS SEGUE A ESTRUTURA DE:
        - USER POSSUI UM PROFILE
        - UM PROFILE POSSUI UM ADDRESS
      POR PADRÃO SERÁ CRIADO UM PROFILE E UM ADDRESS EM BRANCO,
      PARA QUE O USUÁRIO POSSA ALTERAR DEPOIS, QUANDO ACESSAR O APLICATIVO
     ---- */

    //Criando um endereço em branco, somente com o campo blank setado como true
    final ParseObject addressData = ParseObject('Address')..set('blank', true);
    //Salva o endereço
    var responseAddress = await addressData.save();

    if (responseAddress.success) {
      //Criando um perfil em branco, somente com o campo blank setado como true
      final ParseObject profileData = ParseObject('Profile')
        ..set('fullName', fullName)
        ..set('addressId',
            ParseObject('Address')..objectId = addressData.objectId)
        ..set('blank', true);
      //Salva o profile
      var responseProfile = await profileData.save();

      if (responseProfile.success) {
        //Cria o usuário com o profile vinculado e os dados enviados do formulário
        final ParseUser userData = ParseUser(username, password, email)
          ..set('profileId',
              ParseObject('Profile')..objectId = profileData.objectId);
        //Salva o usuário
        var responseUser = await userData.signUp();

        if (responseUser.success) {
          //registrado, redireciona para o usuário
          return true;
        } else {
          //erro no usuário
          errorCode = responseUser.statusCode.toString();
          return false;
        }
      } else {
        //erro no profile
        errorCode = responseProfile.statusCode.toString();
        return false;
      }
    } else {
      //erro no endereço
      errorCode = responseAddress.statusCode.toString();
      return false;
    }
  }

  //Função de registrar usuário
  Future<bool> userLogin(
    //Construtores do formulário
    TextEditingController controllerEmail,
    TextEditingController controllerPass,
  ) async {
    final email = controllerEmail.text.trim();
    final password = controllerPass.text.trim();

    final userData = ParseUser(email, password, null);

    var responseUser = await userData.login();

    if (responseUser.success) {
      return true;
    } else {
      errorCode = responseUser.statusCode.toString();
      return false;
    }
  }

  Future<bool> userResetPassword(
    //Construtores do formulário
    TextEditingController controllerEmail,
  ) async {
    final email = controllerEmail.text.trim();

    final userData = ParseUser(null, null, email);

    var responseUser = await userData.requestPasswordReset();

    if (responseUser.success) {
      return true;
    } else {
      errorCode = responseUser.statusCode.toString();
      return false;
    }
  }
}
