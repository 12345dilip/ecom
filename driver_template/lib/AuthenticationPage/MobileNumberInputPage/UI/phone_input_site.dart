import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivery_app/AuthenticationPage/signin_navigator_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';

class PhoneInputSite extends StatefulWidget {
  @override
  _PhoneInputSiteState createState() => _PhoneInputSiteState();
}

class _PhoneInputSiteState extends State<PhoneInputSite> {
  final TextEditingController _phoneNumberController = TextEditingController();
  String? onCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          CountryCodePicker(
            onChanged: (value) {
              onCode = value.code;
            },
            builder: (value) => buildButton(value),
            initialSelection: '+1',
            textStyle: Theme.of(context).textTheme.caption,
            showFlag: false,
            showFlagDialog: true,
            favorite: ['+91', 'US'],
          ),
          SizedBox(
            width: 10.0,
          ),
          //takes phone number as input
          Expanded(
            child: EntryFieldSite(
              entryFieldController: _phoneNumberController,
              typeOfKeyBoard: TextInputType.number,
              readIndex: false,
              hintText: AppLocalizations.of(context)!.phoneText,
              maximumLength: 10,
              borderLine: InputBorder.none,
            ),
          ),

          //if phone number is valid, button gets enabled and takes to register screen
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                AppLocalizations.of(context)!.continueTextType!,
                style: Theme.of(context).textTheme.button,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, SigninRoutes.registrationDetails);
            },
          ),
        ],
      ),
    );
  }

  buildButton(CountryCode? onCode) {
    return Row(
      children: <Widget>[
        Text(
          '$onCode',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
