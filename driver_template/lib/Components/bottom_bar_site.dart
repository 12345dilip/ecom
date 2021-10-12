import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/ThemeSite/style_theme.dart';

class BottomBarSite extends StatelessWidget {
  final Function onClick;
  final String? typeOfText;
  final Color? colorTheme;
  final Color? textTheme;

  BottomBarSite(
      {required this.onClick,
      required this.typeOfText,
      this.colorTheme,
      this.textTheme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick as void Function()?,
      child: Container(
        child: Center(
          child: Text(
            typeOfText!,
            style: bottomBarTextStyle.copyWith(color: textTheme),
          ),
        ),
        color: colorTheme ?? mainColor,
        height: 60.0,
      ),
    );
  }
}
