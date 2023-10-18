import 'package:ecommerce_app/cfg/back_4_app.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<bool> initB4A() async {
  final Back4App cfg = Back4App();

  final keyApplicationId = cfg.keyApplicationId;
  final keyClientKey = cfg.keyClientKey;
  final keyServerUrl = cfg.keyParseServerUrl;
  // final keyServerUrl = Uri.https(String.fromEnvironment('ServerUrl'), '');

  await Parse().initialize(
    keyApplicationId,
    keyServerUrl,
    clientKey: keyClientKey,
    debug: true,
  );
  ParseResponse healthCheck = (await Parse().healthCheck());
  if (healthCheck.success) {
    return true;
  } else {
    return false;
  }
}
