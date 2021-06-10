import 'package:flutter/material.dart';
import 'package:sabune/screens/splash/body.dart';

import '../../constant.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return Scaffold(
      body: Body(),
      backgroundColor: kPrimaryColor,
    );
  }
}
