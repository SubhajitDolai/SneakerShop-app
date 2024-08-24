import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/pages/about_page.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';
import 'package:sneaker_shop_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/homepage': (context) => const HomePage(),
          '/intropage': (context) => const IntroPage(),
          '/aboutpage': (context) => const AboutPage(),
        },
      ),
    );
  }
}
