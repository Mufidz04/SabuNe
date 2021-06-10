import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sabune/screens/home/home_screen.dart';

import '../../constant.dart';
import '../../size_config.dart';

class LoginSignUp extends StatefulWidget {
  static String routeName = "/auth";
  const LoginSignUp({Key key}) : super(key: key);

  @override
  _LoginSignUpState createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {
  bool isSignupScreen = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: isSignupScreen ? 380 : 300,
              color: kSecondaryColor.withOpacity(.40),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MQuery.width * 0.8,
                  height: MQuery.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/splash_screen1.png'))),
                ),
              ),
            ),
          ),
          //Main Container
          Positioned(
            top: 245,
            child: Container(
              padding: EdgeInsets.all(20),
              height: isSignupScreen ? 350 : 100,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? ktextColor1
                                      : kactiveColor),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? kactiveColor
                                      : ktextColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (isSignupScreen) buildSignUp(),
                ],
              ),
            ),
          ),
          //Button Submit
          Positioned(
            top: isSignupScreen ? 535 : 300,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: kBlackColor.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Home.routeName);
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildSignUp() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(MaterialCommunityIcons.account_outline, "User Name",
              false, false),
          buildTextField(MaterialCommunityIcons.email, "E-mail", false, false),
          buildTextField(MaterialCommunityIcons.textbox_password, "Password",
              false, false),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By pressing 'Submit' you agree to our ",
                  style: TextStyle(color: ktextColor2),
                  children: [
                    TextSpan(
                      //recognizer: ,
                      text: "term & conditions",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTextField(
    IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: kiconColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ktextColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ktextColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: ktextColor1),
      ),
    ),
  );
}
