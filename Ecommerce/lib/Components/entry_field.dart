import 'package:flutter/material.dart';
import 'package:spicy/Themes/colors.dart';

class EntryField extends StatelessWidget {
  final TextEditingController? textEditController;
  final String? picture;
  final String? photo;
  final String? startingValue;
  final bool? readingOnly;
  final TextInputType? keyboard;
  final int? maximumLength;
  final int? maximumLines;
  final String? hintText;
  final InputBorder? borderWidget;
  final Widget? endIcon;
  final Function? onClick;
  final TextCapitalization? typeOfTextCapitalization;
  final Color? photoColor;

  EntryField(
      {this.textEditController,
      this.picture,
      this.photo,
      this.startingValue,
      this.readingOnly,
      this.keyboard,
      this.maximumLength,
      this.hintText,
      this.borderWidget,
      this.maximumLines,
      this.endIcon,
      this.onClick,
      this.typeOfTextCapitalization,
      this.photoColor});

  @override
  Widget build(BuildContext context) {
    var themeVarient = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Column(
        children: [
          TextFormField(
            textCapitalization:
                typeOfTextCapitalization ?? TextCapitalization.sentences,
            cursorColor: mainColor,
            onTap: onClick as void Function()?,
            autofocus: false,
            controller: textEditController,
            initialValue: startingValue,
            style: Theme.of(context).textTheme.caption,
            readOnly: readingOnly ?? false,
            keyboardType: keyboard,
            minLines: 1,
            maxLength: maximumLength,
            maxLines: maximumLines,
            decoration: InputDecoration(
              suffixIcon: endIcon,
              labelText: picture,
              hintText: hintText,
              hintStyle: themeVarient.textTheme.caption!
                  .copyWith(color: themeVarient.hintColor),
              border: borderWidget,
              counter: Offstage(),
              icon: (photo != null)
                  ? ImageIcon(
                      AssetImage(photo!),
                      color: photoColor ?? themeVarient.primaryColor,
                      size: 20.0,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
