import 'package:flutter/material.dart';
import 'package:sabune/models/models.dart';
import 'package:sabune/screens/item_details/item_details_screen.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class GroceryItem extends StatelessWidget {
  final MGrocery item;
  const GroceryItem({
    Key key,
    this.item,
  }) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.of(context)
        .pushNamed(ItemDetailsSreen.routeName, arguments: item);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        width: MQuery.width * 0.3,
        decoration: BoxDecoration(
          border: Border.all(color: kBorderColor, width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: item.hashCode,
                  child: Image.asset(
                    item.url,
                    height: constraints.maxHeight * 0.4,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  item.name,
                  style: kTitleStyle,
                ),
                Text(
                  item.description,
                  style: kDescriptionStyle,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${item.price}',
                      style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
