// ignore_for_file: unused_field, avoid_print
import 'dart:developer';

//Back4App package import
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
//Back4App Keys import
import 'package:social_app/data/b4a/cfg.dart';

class B4App {
  //Atributos
  final BackKeys _cfg = BackKeys();
  final Parse _parse = Parse();
  bool state = false;
  String error = "";

  //Método Inicializar Parse
  void parseIniti() {
    final keyApplicationId = _cfg.keyApplicationId;
    final keyClientKey = _cfg.keyClientKey;
    final keyServerUrl = _cfg.keyParseServerUrl;

    log("Backend: ParseServer com Back4App");
    log("Backend: Inicializando");

    try {
      _parse.initialize(
        keyApplicationId,
        keyServerUrl,
        clientKey: keyClientKey,
        debug: true,
        autoSendSessionId: true,
      );
      state = true;
      log("Backend: Done $state");
    } catch (e) {
      state = false;
      error = e.toString();
      log("Backend: Error $e");
    }
  }
}
