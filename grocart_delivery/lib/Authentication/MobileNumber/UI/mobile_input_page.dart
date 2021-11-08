import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_delivery/Authentication/login_navigator.dart';
import 'package:grocart_delivery/Languages/locals.dart';

class MobileInputPage extends StatefulWidget {
  @override
  _MobileInputPageState createState() => _MobileInputPageState();
}

class _MobileInputPageState extends State<MobileInputPage> {
  final TextEditingController _textController = TextEditingController();
  String? ifCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35, top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(GrocartLocalizations.of(context)!.login!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 25,
                  )),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone_android),
                hintText: 'Enter mobile number',
                labelText: '+91',
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 1000.0,
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                GrocartLocalizations.of(context)!.login!,
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () {
                Navigator.pushNamed(context, LoginRoutes.registration);
              },
            ),
          ),
        ],
      ),
    );
  }

  buildInputButton(CountryCode? ifCode) {
    return Row(
      children: <Widget>[
        Text(
          '$ifCode',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
