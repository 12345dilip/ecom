import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Themes/colors.dart';

class CustomSearchBar extends StatelessWidget {
  final String? hintText;
  final Function? onClick;
  final Color? themeColor;
  final BoxShadow? boxShadowTheme;

  CustomSearchBar({
    this.hintText,
    this.onClick,
    this.themeColor,
    this.boxShadowTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
      decoration: BoxDecoration(
        boxShadow: [
          boxShadowTheme ?? BoxShadow(color: Theme.of(context).cardColor),
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: themeColor ?? Theme.of(context).cardColor,
      ),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        cursorColor: mainColor,
        readOnly: true,
        decoration: InputDecoration(
          icon: ImageIcon(
            AssetImage('images/icons/ic_search.png'),
            color: Theme.of(context).secondaryHeaderColor,
            size: 16,
          ),
          hintText: hintText,
          hintStyle:
              Theme.of(context).textTheme.headline6!.copyWith(color: hintColor),
          border: InputBorder.none,
        ),
        onTap: onClick as void Function()?,
      ),
    );
  }
}
