import 'package:flutter/material.dart';
import 'package:sabune/models/models.dart';

import '../../constant.dart';
import '../rounded_button.dart';
import 'widgets/details.dart';
import 'widgets/expandable.dart';
import 'widgets/header.dart';

class ItemDetailsSreen extends StatefulWidget {
  static const routeName = 'item_details/';

  @override
  _ItemDetailsSreenState createState() => _ItemDetailsSreenState();
}

class _ItemDetailsSreenState extends State<ItemDetailsSreen> {
  MGrocery item;
  bool _initLoaded = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_initLoaded) {
      item = ModalRoute.of(context).settings.arguments as MGrocery;
      _initLoaded = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                item: item,
              ),
              Details(
                item: item,
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: kBorderColor,
              ),
              Expandable(
                title: 'Product Details',
              ),
              Divider(color: kBorderColor, indent: 15, endIndent: 15),
              Expandable(
                title: 'Nutrition',
                trailing: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondaryColor,
                  ),
                  child: Text(item.description),
                ),
              ),
              Divider(color: kBorderColor, indent: 15, endIndent: 15),
              Expandable(
                title: 'Reviews',
                trailing: Row(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          )),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundButton(title: 'Add To Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
