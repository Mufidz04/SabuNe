import 'package:flutter/material.dart';
import 'package:sabune/screens/cart/cart_screen.dart';
import 'package:sabune/screens/order/order_screen.dart';
import 'package:sabune/screens/profile/profile_screen.dart';
import 'package:sabune/screens/shop/ShopScreen.dart';

import 'widgets/nav_bar.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List _tabIcons = List.unmodifiable([
    {
      'icon': 'assets/icons/home.svg',
      'title': 'Home',
    },
    {'icon': 'assets/icons/cart.svg', 'title': 'Cart'},
    {'icon': 'assets/icons/order.svg', 'title': 'Order'},
    {'icon': 'assets/icons/user.svg', 'title': 'Profile'},
  ]);

  final List<Widget> _tabs = List.unmodifiable([
    ShopScreen(),
    CartScreen(),
    OrderScreen(),
    ProfileScreen(),
  ]);

  void onTapChanged(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currentIndex],
      bottomNavigationBar: NavBar(
        tabIcons: _tabIcons,
        activeIndex: currentIndex,
        onTapChanged: onTapChanged,
      ),
    );
  }
}
