// ignore: unused_import
import 'package:ecommerce_app/cfg/back_4_app.dart';
import 'package:ecommerce_app/models/productModel.dart';
import 'package:http/http.dart';

class ProductController {
  static const String _baseUrl = "https://parseapi.back4app.com/classes/";
  static final Back4App cfg = Back4App();

  //READ
  static Future getProductList() async {
    Uri apiUrl = Uri.parse(_baseUrl + "Product");

    Response response = await get(apiUrl, headers: {
      'X-Parse-Application-Id': cfg.keyApplicationId,
      'X-Parse-REST-API-Key': cfg.restApiKey,
    });

    print("Code is ${response.statusCode}");
    print("Response is ${response.body}");

    if (response.statusCode == 200) {
      var body = ProductModelData.fromJson(response.body);
      return body;
    } else {
      //Handle error
    }
  }
}
