import 'package:flutter/material.dart';

import '../../constant.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/order";
  const OrderScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order',
          style: TextStyle(
            color: kThirdColor,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: OrderDetails(),
    );
  }
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'You Dont have any order',
        style: kTitleStyle.copyWith(fontSize: 25),
      ),
    );
  }
}
