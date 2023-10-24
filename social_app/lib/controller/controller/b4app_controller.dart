import 'dart:developer';

import 'package:social_app/data/b4a/b4a_innit.dart';

class B4AppController {
  final B4App _b4App = B4App();

  Future<bool> initBackend() async {
    await _b4App.parseIniti();
    return _b4App.state;
  }

  Future<bool> checkConnection() async {
    bool connected = false;
    await _b4App.healthCheck().then((value) => connected);
    return connected;
  }
}
