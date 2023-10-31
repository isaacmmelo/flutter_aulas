import 'package:flutter/material.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_textfield.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';

// ignore: must_be_immutable
class ForgotPage extends StatelessWidget {
  ForgotPage({super.key});

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
              ClipRRect(
                child: Image.asset(
                  'lib/images/appIcon.png',
                  height: 80,
                ),
              ),
              //Espaço embranco
              const SizedBox(height: 5),
              //Nome do Aplicativo
              const Text(
                'D A S H  S O C I A L',
                style: TextStyle(fontSize: 20),
              ),
              //Espaço em branco
              const SizedBox(height: 25),
              //Input do email
              MyTextField(
                hintText: 'E-mail',
                obscureText: false,
                controller: controllerEmail,
                validator: (p0) {},
                keyboardType: TextInputType.none,
              ),
              const SizedBox(height: 10),
              //Input da senha
              MyTextField(
                hintText: 'CPF',
                obscureText: false,
                controller: controllerPass,
                validator: (p0) {},
                keyboardType: TextInputType.none,
              ),
              const SizedBox(height: 10),
              //Botão de login
              MyButton(
                buttonText: 'Recuperar senha',
                onTapButton: () {},
              ),
              //Espaço em branco
              const SizedBox(height: 20),
              //Voltar ao login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      goToLogin(context);
                    },
                    child: Text(
                      'Voltar ao Login',
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
