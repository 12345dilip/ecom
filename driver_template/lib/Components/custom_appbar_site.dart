import 'package:flutter/material.dart';

class CustomAppBarSite extends StatelessWidget {
  final Widget? headingWidget;
  final List<Widget>? ending;
  final Widget? begining;
  final Function? onClick;
  final String? hintText;
  final PreferredSizeWidget? below;
  final Color? colorTheme;
  final BoxShadow? boxShadowColor;

  CustomAppBarSite({
    this.headingWidget,
    this.ending,
    this.begining,
    this.onClick,
    this.hintText,
    this.below,
    this.colorTheme,
    this.boxShadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleSpacing: 0.0,
        leading: begining,
        title: headingWidget,
        actions: ending,
        bottom: below ?? null);
  }
}
