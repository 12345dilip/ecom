import 'package:flutter/material.dart';
import 'package:spicy/Components/search_bar.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? headingWidget;
  final List<Widget>? actions;
  final Widget? leading;
  final Function? onClick;
  final String? hintText;
  final PreferredSizeWidget? bottomSide;
  final Color? themeColor;
  final BoxShadow? boxShadding;

  CustomAppBar({
    this.headingWidget,
    this.actions,
    this.leading,
    this.onClick,
    this.hintText,
    this.bottomSide,
    this.themeColor,
    this.boxShadding,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Theme.of(context).cardColor,
      titleSpacing: 0.0,
      leading: leading,
      title: headingWidget,
      actions: actions,
      bottom: bottomSide ??
          PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: CustomSearchBar(
              boxShadowTheme: boxShadding,
              themeColor: themeColor,
              hintText: hintText,
              onClick: onClick,
            ),
          ),
    );
  }
}
