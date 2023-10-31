import 'package:flutter/material.dart';
import 'package:social_app/controller/controllers/user_controller.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_textfield.dart';
import 'package:social_app/view/helpers/interface_helpers.dart';
import 'package:social_app/view/helpers/parseErros_helpers.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';
import 'package:social_app/view/validators/register_validator.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Variáveis da página
  UserController userController = UserController();
  bool status = false;
  String text = 'Estamos trabalhando';
  final _formKey = GlobalKey<FormState>();

  //Controllers dos formulários
  TextEditingController controllerUserName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerConfirmPass = TextEditingController();
  TextEditingController controllerFullName = TextEditingController();

  //Função para registrar o usuário
  void _registerUser() async {
    loadingCircleDialog(context);
    status = await userController.userRegister(controllerUserName,
        controllerEmail, controllerPass, controllerFullName);

    // Confere se a resposta do awati já foi efetuada
    if (!context.mounted) return;

    if (status) {
      Navigator.of(context).pop;
      displayConfirmationMessage(
        "Registrado com sucesso. Confirme seu e-mail e faça o login.",
        context,
        () => goToLogin(context),
      );
    } else {
      Navigator.pop(context);
      String messageError = returnMessageErrorPtBr(userController.errorCode);
      displayMessage(messageError, context);
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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

                //Formulário de registro
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //Input do Nome Completo
                      MyTextField(
                        hintText: 'Nome Completo',
                        obscureText: false,
                        controller: controllerFullName,
                        validator: (value) => validateUserName(value),
                        keyboardType: TextInputType.name,
                      ),

                      //Espaço em branco
                      const SizedBox(height: 10),
                      //Input do nome
                      MyTextField(
                        hintText: 'Nome de usuário',
                        obscureText: false,
                        controller: controllerUserName,
                        validator: (value) => validateUserName(value),
                        keyboardType: TextInputType.name,
                      ),

                      //Espaço em branco
                      const SizedBox(height: 10),

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
                      const SizedBox(height: 10),

                      //Input da confirme a senha
                      MyTextField(
                        hintText: 'Confirme a Senha',
                        obscureText: true,
                        controller: controllerConfirmPass,
                        validator: (value) =>
                            validateConfirmPassword(value, controllerPass.text),
                        keyboardType: TextInputType.visiblePassword,
                      ),

                      //Espaço em branco
                      const SizedBox(height: 20),

                      //Botão de login
                      MyButton(
                        buttonText: 'Registrar',
                        onTapButton: () {
                          if (_formKey.currentState!.validate()) {
                            _registerUser();
                          }
                        },
                      ),
                    ],
                  ),
                ),

                //Espaço em branco
                const SizedBox(height: 20),

                //Possui uma conta? Faça login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        goToLogin(context);
                      },
                      child: Text(
                        'Possui uma conta? Faça login',
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
