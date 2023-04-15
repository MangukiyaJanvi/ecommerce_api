import 'package:ecaapi/utils/api_helper.dart';
import 'package:flutter/foundation.dart';

import '../model/home_model.dart';

class HomeProvider extends ChangeNotifier {
  String? msg;
  List<dynamic> productList = [];
  List<dynamic> cartList=[];

  Future<String?> jsonParsing(String pname,String prate,String pprice,String poffer,String pdesc,String pcate) async {
    ApiHelper apiHelper = ApiHelper();
    msg = await apiHelper.ecommerceApi(pname,prate,pprice,poffer,pdesc,pcate);
    return msg;
  }

  Future<void> getApi() async {
    ApiHelper apiHelper = ApiHelper();
    var p1 = await apiHelper.getEcmApi();
    productList =p1.map((e) => ProductModel.fromJson(e)).toList();
    notifyListeners();
  }

  void remove(int index)
  {
     cartList.removeAt(index);
    notifyListeners();
  }
}
