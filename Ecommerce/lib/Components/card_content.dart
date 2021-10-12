import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String? typeOfText;
  final AssetImage? photo;

  CardContent({this.typeOfText, this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: Image(image: photo!),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            typeOfText!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ],
    );
  }
}
