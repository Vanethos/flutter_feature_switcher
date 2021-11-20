import 'package:feature_switcher/ui/screens/basic/basic_page.dart';
import 'package:feature_switcher/ui/screens/diamond/diamond_page.dart';
import 'package:feature_switcher/ui/screens/home/home_page.dart';
import 'package:feature_switcher/ui/screens/premium/premium_page.dart';
import 'package:flutter/material.dart';

const routeHome = "/home";
const routeBasic = "/basic";
const routePremium = "/premium";
const routeDiamond = "/diamon";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: routeHome,
      routes: {
        routeHome: (_) => const HomePage(),
        routeBasic: (_) => const BasicPage(),
        routePremium: (_) => const PremiumPage(),
        routeDiamond: (_) => const DiamondPage(),
      },
    );
  }
}
