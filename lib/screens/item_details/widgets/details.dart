import 'package:flutter/material.dart';
import 'package:sabune/models/models.dart';

import '../../../constant.dart';

class Details extends StatelessWidget {
  final MGrocery item;
  const Details({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: kTitleStyle.copyWith(fontSize: 18),
                ),
                Icon(Icons.favorite_border),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item.description,
              style: kDescriptionStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.horizontal_rule),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: kBorderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '1',
                    style: kTitleStyle,
                  ),
                ),
                Icon(Icons.add, color: kPrimaryColor),
                Spacer(),
                Text('\$${item.price}',
                    style: kTitleStyle.copyWith(fontSize: 18))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
