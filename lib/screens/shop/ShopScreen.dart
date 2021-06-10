import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'widgets/Categories_tile.dart';
import 'widgets/PopularDeals.dart';
import 'widgets/SearchField.dart';
import 'widgets/Banners.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    // var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          width: double.infinity,
          height: 800,
          decoration: BoxDecoration(
            color: Color(0xFFB4AEE8),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(),
                SizedBox(
                  height: 10,
                ),
                Banners(),
                SizedBox(
                  height: 10,
                ),
                _buildSectionTitle('Categories', () {}),
                _buildCategoriesList(),
                SizedBox(
                  height: 10,
                ),
                _buildSectionTitle('Popular Deals', () {}),
                SizedBox(
                  height: 10,
                ),
                PopularDeals(),
              ],
            ),
          )),
    );
  }

  Widget _buildCategoriesList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CategoriesTile(
            assetPath: 'assets/images/Vegetables.png',
            color: Color(0xFFFFE3FE),
            title: 'Sayur',
          ),
          CategoriesTile(
            assetPath: 'assets/images/Cake.png',
            color: Color(0xFFFFE3FE),
            title: 'Cake',
          ),
          CategoriesTile(
            assetPath: 'assets/images/apple.png',
            color: Color(0xFFFFE3FE),
            title: 'Apel',
          ),
        ],
      ),
    );
  }
}

Widget _buildSectionTitle(String title, [Function onTap]) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kTitleStyle.copyWith(fontSize: 18),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            'See All',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    ),
  );
}
