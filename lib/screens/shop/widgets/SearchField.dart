import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MQuery.height * .15,
          decoration: BoxDecoration(
            color: Color(0xFF440A67),
            image: DecorationImage(
              image: AssetImage("assets/images/bg_appBar.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 42,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search your daily grocery food...',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset('assets/icons/search.svg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
