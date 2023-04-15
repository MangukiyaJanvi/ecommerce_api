import 'package:ecaapi/screens/homescreen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;
  TextEditingController txtpname = TextEditingController();
  TextEditingController txtprate = TextEditingController();
  TextEditingController txtpprice = TextEditingController();
  TextEditingController txtpoffer = TextEditingController();
  TextEditingController txtpdesc = TextEditingController();
  TextEditingController txtpcate = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getApi();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF1F2140),
          title: Text(
            'Etsy Seller',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter New Product Details',
                style: TextStyle(color: Color(0XFF1F2140), fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Name : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        controller: txtpname,
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Price : ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Offer : ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        controller: txtpprice,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        controller: txtpoffer,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Description : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        controller: txtpdesc,
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Rate : ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Category : ',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: TextFormField(
                      controller: txtprate,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.sentences,
                        controller: txtpcate,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0XFF1F2140),
                  ),
                ),
                onPressed: () {
                  // var msg = ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text("${homeProviderFalse!.msg}"),
                  //   ),
                  // );
                  String productname = txtpname.text;
                  String productrate = txtprate.text;
                  String productprice = txtpprice.text;
                  String productoffer = txtpoffer.text;
                  String productdesc = txtpdesc.text;
                  String productcate = txtpcate.text;
                  homeProviderFalse!.jsonParsing(productname, productrate,
                      productprice, productoffer, productdesc, productcate);
                  Navigator.pop(context);
                  // (homeProviderFalse!.msg == "Success")
                  //     ? msg.closed.then(
                  //         (value) {},
                  //       )
                  //     : ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content: Text("Please Check Data"),
                  //         ),
                  //       );
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
