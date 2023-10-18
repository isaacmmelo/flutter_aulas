import 'package:flutter/material.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_textfield.dart';
import 'package:social_app/view/helpers/interface_helpers.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Ícone do Sistema
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              //Espaço embranco
              const SizedBox(height: 5),
              //Nome do Aplicativo
              const Text(
                'S O C I A L',
                style: TextStyle(fontSize: 20),
              ),
              //Espaço em branco
              const SizedBox(height: 25),
              //Input do email
              MyTextField(
                  hintText: 'E-mail',
                  obscureText: false,
                  controller: controllerEmail),
              const SizedBox(height: 10),
              //Input da senha
              MyTextField(
                  hintText: 'Senha',
                  obscureText: true,
                  controller: controllerPass),
              //Esqueceu a senha
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      goToForgotPass(context);
                    },
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ),
                ],
              ),
              //Espaço em branco
              const SizedBox(height: 20),
              //Botão de login
              MyButton(
                buttonText: 'Login',
                onTapButton: () {
                  goToHome(context);
                },
              ),
              //Espaço em branco
              const SizedBox(height: 20),
              //Não possui conta, registre-se
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      goToRegister(context);
                    },
                    child: Text(
                      'Não possui conta? Registre-se',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
