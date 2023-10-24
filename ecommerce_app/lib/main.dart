//Páginas principais do Aplicativo
//import 'package:ecommerce_app/data/b4a/connect_b4a.dart';
import 'package:ecommerce_app/pages/about_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/intro_page_ooo.dart';
//Pacotes do Framework
import 'package:flutter/material.dart';
//Pacotes para utilização dos providers
import 'package:ecommerce_app/models/cart.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*  final isInitialized = await initB4A();
  if (!isInitialized) {
    print('B4A not conected...');
  } else {
    print('B4A conected...');
  }
 */
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Inicialização dos providers para comunicação reativa
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      //Filho do provider, para carregamento das páginas do aplicativo
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        //Rotas para nacegação estática das páginas principais do aplicativo
        routes: {
          '/homepage': (context) =>
              HomePage(), //Página inicial do aplicativo (Carrega produtos, carros e favoritos)
          '/intropage': (context) =>
              const IntroPage(), //Página de introdução (Login do aplicativo - a fazer)
          '/aboutpage': (context) =>
              const AboutPage() //Página de sobre, informações do aplicativo
        },
      ),
    );
  }
}
