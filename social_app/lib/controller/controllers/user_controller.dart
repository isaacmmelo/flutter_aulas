import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class UserController {
  //Função de registrar usuário
  Future<bool> userRegister(
    //Construtores do formulário
    TextEditingController controllerUsername,
    TextEditingController controllerEmail,
    TextEditingController controllerPassword,
  ) async {
    //Definindo variáveis finais de usuário
    final String username = controllerUsername.text.trim();
    final String email = controllerEmail.text.trim();
    final String password = controllerPassword.text.trim();

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
        ..set('fullName', username)
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
        } else {
          //erro no usuário
          return false;
        }
      } else {
        //erro no profile
        return false;
      }
    } else {
      //erro no endereço
      return false;
    }
    //erro geral
    return false;
  }
}
