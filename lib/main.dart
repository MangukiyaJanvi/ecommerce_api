import 'package:ecaapi/screens/datascreen/view/cart_screen.dart';
import 'package:ecaapi/screens/datascreen/view/data_screen.dart';
import 'package:ecaapi/screens/datascreen/view/profile_screen.dart';
import 'package:ecaapi/screens/homescreen/view/home_screen.dart';
import 'package:ecaapi/screens/homescreen/view/second_screen.dart';
import 'package:ecaapi/screens/splashscreen/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/homescreen/provider/home_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'home': (context) => HomeScreen(),
          'second': (context) => SecondScreen(),
          'data': (context) => DataScreen(),
          'cart': (context) => CartScreen(),
          'profile': (context) => ProfileScreen(),
        },
      ),
    ),
  );
}
