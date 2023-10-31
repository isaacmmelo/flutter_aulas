import 'package:flutter/material.dart';
import 'package:social_app/controller/controllers/user_controller.dart';
import 'package:social_app/view/components/app_imageAndTitle.dart';
import 'package:social_app/view/components/my_button.dart';
import 'package:social_app/view/components/my_textfield.dart';
import 'package:social_app/view/helpers/interface_helpers.dart';
import 'package:social_app/view/helpers/parseErros_helpers.dart';
import 'package:social_app/view/helpers/rout_helpers.dart';
import 'package:social_app/view/validators/forgot_validator.dart';

// ignore: must_be_immutable
class ForgotPage extends StatefulWidget {
  ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  //Variáveis da página
  UserController userController = UserController();

  bool status = false;

  final _formKey = GlobalKey<FormState>();

  //Controllers dos formulários
  TextEditingController controllerEmail = TextEditingController();

  void _revoceryPass() async {
    loadingCircleDialog(context);

    status = await userController.userResetPassword(controllerEmail);

    // Confere se a resposta do awati já foi efetuada
    if (!context.mounted) return;

    if (status) {
      Navigator.of(context).pop;
      displayConfirmationMessage(
        "Sucesso!",
        "Instruções para recuperar a senha foram enviadas para seu e-mail.",
        context,
        () => goToLogin(context),
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

                      //Botão de recuperar
                      MyButton(
                        buttonText: 'Entrar',
                        onTapButton: () {
                          if (_formKey.currentState!.validate()) {
                            _revoceryPass();
                          }
                        },
                      ),

                      //Espaço em branco
                      const SizedBox(height: 20),
                    ],
                  )),

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
