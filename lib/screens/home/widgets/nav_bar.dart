import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'navBarItem.dart';

class NavBar extends StatelessWidget {
  final List _tabIcons;
  final int activeIndex;
  final ValueChanged<int> onTapChanged;
  const NavBar({
    Key key,
    @required List tabIcons,
    this.activeIndex,
    this.onTapChanged,
  })  : _tabIcons = tabIcons,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 76,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: kShadowColor.withOpacity(0.14),
            blurRadius: 25,
          )
        ],
        borderRadius: BorderRadius.only(

            // topLeft: Radius.circular(15),
            // topRight: Radius.circular(15),
            ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_tabIcons.length, (index) {
          return NavBarItem(
            icon: _tabIcons[index],
            index: index,
            activeIndex: activeIndex,
            onTapChanged: onTapChanged,
          );
        }),
      ),
    );
  }
}
