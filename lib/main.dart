import 'package:flutter/material.dart';
import 'package:sabune/routes.dart';
import 'package:sabune/screens/splash/splash_screen.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabune',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF440A67),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
