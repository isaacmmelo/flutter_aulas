import 'package:flutter/material.dart';
import 'package:social_app/main.dart';


class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.coffee,
                size: 60,
                color: Colors.brown,
              ),

              const SizedBox(height: 15),

              const Text(
                'Café Aroma & Arte',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: principal,
                ),
              ),

              const SizedBox(height: 35),

              // EMAIL

              TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail ou Usuário',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // SENHA

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              // ESQUECEU A SENHA

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Esqueceu a senha?'),
                ),
              ),

              const SizedBox(height: 15),

              // ENTRAR

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: principal,
                    foregroundColor: Colors.white, 
                    padding: const EdgeInsets.all(15),
                  ),

                  onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                  },

                  child: const Text('Entrar'),
                ),
              ),

              const SizedBox(height: 10),

              // CADASTRAR

              OutlinedButton(
                onPressed: () {},
                child: const Text('Cadastrar-se'),
              ),

              const SizedBox(height: 15),

              // REDES SOCIAIS

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
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