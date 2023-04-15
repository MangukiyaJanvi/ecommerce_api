import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  Future<String> ecommerceApi(String pname,String prate,String pprice,String poffer,String pdesc,String pcate) async {
    String link =
        "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var json = await http.post(uri, body: {
      "p_name": pname,
      "p_rate": prate,
      "p_price": pprice,
      "p_offer": poffer,
      "p_desc": pdesc,
      "p_category": pcate
    });
    if (json.statusCode == 200) {
      return "Success";
    }
    return "failed";
  }

  Future<List> getEcmApi() async {
    String link =
        "https://apidatahub.000webhostapp.com/MyShop/API/products.php";
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    List<dynamic> productList = json;
    return productList;
  }
}
