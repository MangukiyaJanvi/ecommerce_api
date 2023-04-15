import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    NextScreen();
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0XFF1F2140),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: Icon(
                        Icons.phone_android_sharp,
                        size: 150,
                        color: Color(0XFF707185),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    left: 85,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "YOUR APP",
                style: TextStyle(color: Color(0XFF707185), fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void NextScreen() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'second');
    });
  }
}
