import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spicy/Authentication/login_navigator_page.dart';
import 'package:spicy/Components/entry_field.dart';
import 'package:spicy/Locale/locales.dart';

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
      padding: EdgeInsets.only(left: 35, right: 35),
      decoration: BoxDecoration(color: Color(0xffF9F9FD)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(SpicyLocalizations.of(context)!.login!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 25,
                  )),
          // CountryCodePicker(
          //   onChanged: (value) {
          //     ifCode = value.code;
          //   },
          //   builder: (value) => buildInputButton(value),
          //   initialSelection: '+1',
          //   textStyle: Theme.of(context).textTheme.caption,
          //   showFlag: false,
          //   showFlagDialog: true,
          //   favorite: ['+91', 'US'],
          // ),

          //takes phone number as input
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone_android),
              hintText: 'Enter mobile number',
              labelText: '+91',
            ),
          ),
          // Expanded(
          //   child: EntryField(
          //     textEditController: _textController,
          //     keyboard: TextInputType.number,
          //     readingOnly: false,
          //     hintText: SpicyLocalizations.of(context)!.mobileText,
          //     maximumLength: 10,
          //     borderWidget: InputBorder.none,
          //   ),
          //),
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
                SpicyLocalizations.of(context)!.login!,
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
