import 'package:delivery_app/AuthenticationPage/MobileNumberInputPage/UI/phone_input_site.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/Locale/locales.dart';

//first page that takes phone number as input for verification
class MobileNumberSite extends StatefulWidget {
  @override
  _MobileNumberSiteState createState() => _MobileNumberSiteState();
}

class _MobileNumberSiteState extends State<MobileNumberSite> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //used for scrolling when keyboard pops up
        child: Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              Image.asset(
                "images/logo_delivery.png",
                scale: 4, //delivoo logo
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.bodyTextType1!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.bodyTextType2!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Spacer(),
              Image.asset("images/login_delivery.png"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: PhoneInputSite(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
