import 'package:flutter/material.dart';
import 'package:social_app/controller/controllers/user_controller.dart';
import 'package:social_app/view/components/app_imageAndTitle.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_textfield.dart';
import 'package:social_app/view/helpers/interface_helpers.dart';
import 'package:social_app/view/helpers/parseErros_helpers.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';
import 'package:social_app/view/validators/login_validator.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Variáveis da página
  UserController userController = UserController();

  bool status = false;

  final _formKey = GlobalKey<FormState>();

  //Controllers dos formulários
  TextEditingController controllerEmail = TextEditingController();

  TextEditingController controllerPass = TextEditingController();

  void _loginUser() async {
    loadingCircleDialog(context);

    status = await userController.userLogin(controllerEmail, controllerPass);

    // Confere se a resposta do awati já foi efetuada
    if (!context.mounted) return;

    if (status) {
      Navigator.of(context).pop;
      displayConfirmationMessage(
        "Sucesso!",
        "Usuário e senha confirmado, redirecionando para a Home",
        context,
        () => goToHome(context),
      );
    } else {
      Navigator.pop(context);
      String messageError = returnMessageErrorPtBr(userController.errorCode);
      displayMessage(
        "Erro!",
        messageError,
        context,
      );
      Navigator.of(context).pop;
    }
  }

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
              const ImageAndTitle(),

              //Formulário de Login
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //Input do email
                      MyTextField(
                        hintText: 'E-mail',
                        obscureText: false,
                        controller: controllerEmail,
                        validator: (value) => validateEmail(value),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      //Espaço em branco
                      const SizedBox(height: 10),

                      //Input da senha
                      MyTextField(
                        hintText: 'Senha',
                        obscureText: true,
                        controller: controllerPass,
                        validator: (value) => validatePassword(value),
                        keyboardType: TextInputType.visiblePassword,
                      ),

                      //Espaço em branco
                      const SizedBox(height: 20),

                      //Botão de login
                      MyButton(
                        buttonText: 'Entrar',
                        onTapButton: () {
                          if (_formKey.currentState!.validate()) {
                            _loginUser();
                          }
                        },
                      ),
                    ],
                  )),

              //Espaço em branco
              const SizedBox(height: 20),

              //Esqueceu a senha
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
