import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final String? picture;
  final String? heading;
  EntryField(this.picture, this.heading);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        picture != null
            ? Row(
                children: [
                  Text(
                    picture!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 12),
                  ),
                ],
              )
            : SizedBox.shrink(),
        TextFormField(
          decoration: InputDecoration(
              prefixStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              hintText: heading,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black, fontSize: 17)),
        ),
      ],
    );
  }
}

class SmallSizeTextFormField extends StatelessWidget {
  final String? picture;
  final String? textTitle;
  SmallSizeTextFormField(this.picture, this.textTitle);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        picture != null
            ? Row(
                children: [
                  Text(
                    picture!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 11),
                  ),
                ],
              )
            : SizedBox.shrink(),
        TextFormField(
          decoration: InputDecoration(
              isDense: true,
              prefixStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              hintText: textTitle,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black, fontSize: 14)),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class SmallImageTextFormField extends StatelessWidget {
  final String photo;
  final String picture;
  final String textTitle;
  SmallImageTextFormField(this.photo, this.picture, this.textTitle);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              picture,
              style:
                  Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 11),
            ),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
              isDense: true,
              prefixStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!),
              ),
              hintText: textTitle,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black, fontSize: 14)),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
