import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";
  const CartScreen({
    Key key,
  }) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List cartList = [
    {
      "img":
          "https://images.unsplash.com/photo-1511993226957-cd166aba52d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1843&q=80",
      "name": "Pak Choi",
      "price": "\$10",
      "size": "1/2 Kg"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1602277683097-3d6c108548fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
      "name": "Jamur",
      "price": "\$20",
      "size": "1 Kg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
            color: kThirdColor,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: getbodyCart(),
    );
  }

  Widget getbodyCart() {
    return ListView(
      children: [
        Column(
            children: List.generate(cartList.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(cartList[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartList[index]['name'],
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          cartList[index]['size'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(cartList[index]['price'],
                                style: TextStyle(
                                  fontSize: 22,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color:
                                              kBorderColor.withOpacity(0.5))),
                                  child: Center(
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 10,
                                      color: kBlackColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color:
                                              kBorderColor.withOpacity(0.5))),
                                  child: Center(
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 10,
                                      color: kBlackColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        })),
        Divider(
          color: Colors.grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "COD - Free",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50 / 2)),
            child: Center(
              child: Text(
                "Buy for \$30".toUpperCase(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
