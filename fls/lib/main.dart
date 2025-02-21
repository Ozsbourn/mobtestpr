import 'package:fls/models/shop.dart';
import 'package:fls/pages/animation_page.dart';
import 'package:fls/pages/intro_page.dart';
import 'package:fls/pages/shop_page.dart';
import 'package:fls/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/animation_page': (context) => const AnimationPage(),
      },
    );
  }
}
