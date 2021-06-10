import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SabuNe',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: kThirdColor),
        ),
        Image.asset(
          image,
          height: MQuery.height * 0.65,
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
