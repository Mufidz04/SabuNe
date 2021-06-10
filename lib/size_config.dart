import 'package:flutter/material.dart';

class MQuery {
  static double width;
  static double height;

  void init(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = MQuery.height;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = MQuery.width;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
