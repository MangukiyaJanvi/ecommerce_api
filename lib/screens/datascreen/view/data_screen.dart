import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../homescreen/provider/home_provider.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF707185),
        appBar: AppBar(
          backgroundColor: Color(0XFF1F2140),
          title: Text(
            '${homeProviderTrue!.productList[index].productName}',
          ),
        ),
        body: Center(
          child: Container(
            height: 520,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0XFF1F2140), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/mobile.jpeg'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      child: Text(
                        '${homeProviderTrue!.productList[index].productName} 4 UX482EAR-KA501WS Intel Core I5-1155G7 - ${homeProviderTrue!.productList[index].productDesc}',
                        style: TextStyle(
                            color: Color(0XFF1F2140),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Offer Price : ₹ ${homeProviderTrue!.productList[index].productPrice}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'You Save : ₹ ${homeProviderTrue!.productList[index].productOffer}',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benefits : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Free Shipping',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'EMI starting at ₹ 9,378',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Warranty :      ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 206,
                          child: Text(
                            '1 Year from the manufacturer from the date of purchase',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        homeProviderTrue!.cartList
                            .add(homeProviderTrue!.productList[index]);
                      },
                      child: Text('Add To Cart'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0XFF1F2140),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 40,
                ),
                Positioned(
                  top: 13,
                  left: 15,
                  child: Text(
                    '${homeProviderTrue!.productList[index].productRate}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
