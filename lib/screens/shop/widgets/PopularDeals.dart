import 'package:flutter/material.dart';
import 'package:sabune/models/models.dart';

import '../../../size_config.dart';
import 'GroceryItem.dart';

class PopularDeals extends StatelessWidget {
  PopularDeals({
    Key key,
  }) : super(key: key);

  final List<MGrocery> _items = [
    MGrocery(
        name: 'Daging Sapi',
        url: 'assets/images/Meat1.png',
        description: '1Kg',
        price: 100),
    MGrocery(
        name: 'Ice Cream',
        url: 'assets/images/IceCream.png',
        description: '1 box',
        price: 50),
    MGrocery(
        name: 'Sayur Sawi',
        url: 'assets/images/Vegetables2.png',
        description: '1/2Kg',
        price: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: MQuery.height * 0.2,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (_, i) => GroceryItem(
            item: _items[i],
          ),
          separatorBuilder: (_, __) => SizedBox(
            width: 15,
          ),
        ),
      ),
    );
  }
}
