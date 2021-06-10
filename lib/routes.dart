// We use name route
// All our routes will be available here

import 'package:flutter/material.dart';
import 'package:sabune/screens/auth/loginSignUp.dart';
import 'package:sabune/screens/cart/cart_screen.dart';
import 'package:sabune/screens/home/home_screen.dart';
import 'package:sabune/screens/item_details/item_details_screen.dart';
import 'package:sabune/screens/order/order_screen.dart';
import 'package:sabune/screens/profile/profile_screen.dart';
import 'package:sabune/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  Home.routeName: (context) => Home(),
  CartScreen.routeName: (context) => CartScreen(),
  OrderScreen.routeName: (context) => OrderScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ItemDetailsSreen.routeName: (context) => ItemDetailsSreen(),
  LoginSignUp.routeName: (context) => LoginSignUp(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
