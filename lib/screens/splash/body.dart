import 'package:flutter/material.dart';
import 'package:sabune/screens/auth/loginSignUp.dart';

import '../../constant.dart';
import '../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
                'Choose What You WanT!',
                style: TextStyle(color: kThirdColor),
              ),
              Image.asset(
                'assets/images/sabune_splash.png',
                height: MQuery.height * 0.65,
                width: getProportionateScreenWidth(235),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(56),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: kSecondaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginSignUp.routeName);
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: kThirdColor,
                      fontSize: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
