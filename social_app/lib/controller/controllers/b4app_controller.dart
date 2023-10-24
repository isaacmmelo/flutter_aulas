import 'dart:developer';

import 'package:social_app/data/b4a/b4a_innit.dart';

class B4AppController {
  final B4App _b4App = B4App();

  bool initBackend() {
    _b4App.parseIniti();
    return _b4App.state;
  }

  bool checkConnection() {
    return _b4App.state;
  }
}
