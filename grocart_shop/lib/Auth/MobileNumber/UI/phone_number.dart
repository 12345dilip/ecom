import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/Themes/colors.dart';

import 'mobile_input.dart';
class PhoneNumber extends StatefulWidget {
  static const String id = 'phone_number';

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              Expanded(
                child: Image.asset(
                  "images/GROCART.png",
                ),
              ),
              Center(
                  child: Text(
                'SHOP APP',
                style:
                    TextStyle(color: kHintColor, fontWeight: FontWeight.bold),
              )),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.bodyText1!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.bodyText2!,
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ],
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: Image.asset(
                  "images/SIGNIN.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: MobileInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
