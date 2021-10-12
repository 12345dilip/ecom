import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spicy/Themes/colors.dart';
import 'package:spicy/Themes/theme_colors.dart';

class BottomBar extends StatelessWidget {
  final Function onClick;
  final String? typeOftext;
  final Color? themeColor;
  final Color? typeOftextColor;

  BottomBar(
      {required this.onClick,
      required this.typeOftext,
      this.themeColor,
      this.typeOftextColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick as void Function()?,
      child: Container(
        child: Center(
          child: Text(
            typeOftext!,
            style: typeOftextColor != null
                ? bottomBarTextStyle.copyWith(color: typeOftextColor)
                : bottomBarTextStyle,
          ),
        ),
        color: themeColor ?? mainColor,
        height: 60.0,
      ),
    );
  }
}
