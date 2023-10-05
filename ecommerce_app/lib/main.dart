import 'package:ecommerce_app/cfg/back_4_app.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/pages/aboutPage.dart';
import 'package:ecommerce_app/pages/homePage.dart';
import 'package:ecommerce_app/pages/introPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void main() async {
  //Backend con config
  Back4App cfg4app = Back4App();

  //Backend con variables
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = cfg4app.keyApplicationId;
  final keyClientKey = cfg4app.keyClientKey;
  final keyParseServerUrl = cfg4app.keyParseServerUrl;

  //Backend Connection
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);  

  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/homepage': (context) => HomePage(),
          '/intropage': (context) => const IntroPage(),
          '/aboutpage': (context) => const AboutPage()
        },
      ),
    );
  }
}
