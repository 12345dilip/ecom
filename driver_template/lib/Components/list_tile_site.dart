import 'package:flutter/material.dart';

class BuildListSite extends StatelessWidget {
  final String? photo;
  final String? typeOfText;
  final Function? onClick;

  BuildListSite({this.photo, this.typeOfText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      leading: Image.asset(
        photo!,
        height: 25.3,
      ),
      title: Text(
        typeOfText!,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.w500),
      ),
      onTap: onClick as void Function()?,
    );
  }
}
