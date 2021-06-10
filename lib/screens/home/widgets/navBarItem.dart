import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class NavBarItem extends StatefulWidget {
  final int index;
  final int activeIndex;
  final dynamic icon;
  final ValueChanged<int> onTapChanged;
  const NavBarItem({
    Key key,
    this.icon,
    this.index,
    this.activeIndex,
    this.onTapChanged,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 1,
      upperBound: 1.3,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap() {
    if (widget.index != widget.activeIndex) {
      widget.onTapChanged(widget.index);
      _controller.forward().then((value) => _controller.reverse());
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ScaleTransition(
            scale: _controller,
            child: SvgPicture.asset(
              widget.icon['icon'],
              color: widget.activeIndex == widget.index ? kAnimatedColor : null,
            ),
          ),
          Text(
            widget.icon['title'],
            style: TextStyle(
              color: widget.activeIndex == widget.index ? kAnimatedColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
