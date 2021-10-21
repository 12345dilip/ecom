import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';

class BuildItemsListTile extends StatelessWidget {
  final String? photo;
  final String? textType;
  final Function? onPressed;
  final bool smaller;

  BuildItemsListTile(
      {this.photo, this.textType, this.onPressed, this.smaller = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
      leading: FadedScaleAnimation(
        Image.asset(
          photo!,
          height: smaller ? 26 : 36,
        ),
        durationInMilliseconds: 200,
      ),
      title: Text(
        textType!,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            fontWeight: FontWeight.bold, letterSpacing: 0.07, fontSize: 17),
      ),
      onTap: onPressed as void Function()?,
    );
  }
}
