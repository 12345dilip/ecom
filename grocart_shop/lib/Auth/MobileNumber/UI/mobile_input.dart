import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_shop/Auth/login_navigator.dart';
import 'package:grocart_shop/Components/entry_field.dart';
import 'package:grocart_shop/Locale/locales.dart';

class MobileInput extends StatefulWidget {
  @override
  _MobileInputState createState() => _MobileInputState();
}

class _MobileInputState extends State<MobileInput> {
  final TextEditingController _controller = TextEditingController();
  String? isoCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CountryCodePicker(
          onChanged: (value) {
            isoCode = value.code;
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
        Expanded(
          child: EntryField(
            controller: _controller,
            keyboardType: TextInputType.number,
            readOnly: false,
            hint: AppLocalizations.of(context)!.mobileText,
            maxLength: 10,
            border: InputBorder.none,
          ),
        ),

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
              AppLocalizations.of(context)!.continueText!,
              style: Theme.of(context).textTheme.button,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginRoutes.registration);
          },
        ),
      ],
    );
  }

  buildButton(CountryCode? isoCode) {
    return Row(
      children: <Widget>[
        Text(
          '$isoCode',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
