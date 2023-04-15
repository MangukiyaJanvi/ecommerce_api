import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../homescreen/provider/home_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF1F2140),
          title: Text(
            'Cart Screen',
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0XFF1F2140), width: 2),
            ),
            child: ListTile(
              leading: Image.asset('assets/images/mobile.jpeg'),
              title: Text('${homeProviderTrue!.cartList[index].productName}'),
              subtitle: Text(
                  "Price : ${homeProviderTrue!.cartList[index].productPrice}/off.${homeProviderTrue!.cartList[index].productOffer}"),
              trailing: IconButton(
                onPressed: () {
                  homeProviderFalse!.remove(index);
                },
                icon: Icon(
                  Icons.delete,
                  size: 28,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          itemCount: homeProviderTrue!.cartList.length,
        ),
      ),
    );
  }
}
