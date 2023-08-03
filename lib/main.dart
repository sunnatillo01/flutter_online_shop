import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/ItemPage.dart';
import 'package:flutter_online_shop/pages/SplashScreen.dart';
import 'package:flutter_online_shop/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
