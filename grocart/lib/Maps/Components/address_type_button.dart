import 'package:flutter/material.dart';
import 'package:grocart/Themes/colors.dart';

class AddressTypeButton extends StatelessWidget {
  final String? picture;
  final String? photo;
  final Function? onClick;
  final bool? isSelectedTheme;
  final Color selectedThemeColor = Colors.white;
  final Color unSelectedThemeColor = Colors.black;

  AddressTypeButton(
      {this.picture, this.photo, this.onClick, this.isSelectedTheme});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor:
            isSelectedTheme! ? mainColor : Theme.of(context).cardColor,
      ),
      onPressed: onClick as void Function()?,
      icon: Image.asset(
        photo!,
        scale: 3.5,
        color: isSelectedTheme! ? selectedThemeColor : unSelectedThemeColor,
      ),
      label: Text(
        photo!,
        style: TextStyle(
          color: isSelectedTheme! ? selectedThemeColor : unSelectedThemeColor,
        ),
      ),
    );
  }
}
