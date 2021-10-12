import 'package:flutter/material.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class EntryFieldSite extends StatelessWidget {
  final TextEditingController? entryFieldController;
  final String? banner;
  final String? photo;
  final String? startingValue;
  final bool? readIndex;
  final TextInputType? typeOfKeyBoard;
  final int? maximumLength;
  final int? maximumLines;
  final String? hintText;
  final InputBorder? borderLine;
  final Widget? endIcon;
  final Function? onClick;
  final TextCapitalization? textCapitalValue;

  EntryFieldSite({
    this.entryFieldController,
    this.banner,
    this.photo,
    this.startingValue,
    this.readIndex,
    this.typeOfKeyBoard,
    this.maximumLength,
    this.hintText,
    this.borderLine,
    this.maximumLines,
    this.endIcon,
    this.onClick,
    this.textCapitalValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: TextFormField(
        textCapitalization: textCapitalValue ?? TextCapitalization.sentences,
        cursorColor: mainColor,
        onTap: onClick as void Function()?,
        autofocus: false,
        controller: entryFieldController,
        initialValue: startingValue,
        readOnly: readIndex ?? false,
        keyboardType: typeOfKeyBoard,
        style: Theme.of(context).textTheme.caption,
        minLines: 1,
        maxLength: maximumLength,
        maxLines: maximumLines,
        decoration: InputDecoration(
          suffixIcon: endIcon,
          labelText: banner,
          hintText: hintText,
          border: borderLine,
          counter: Offstage(),
          icon: (photo != null)
              ? ImageIcon(
                  AssetImage(photo!),
                  color: mainColor,
                  size: 20.0,
                )
              : null,
        ),
      ),
    );
  }
}
