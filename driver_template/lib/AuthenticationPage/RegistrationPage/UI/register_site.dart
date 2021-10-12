import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/AuthenticationPage/signin_navigator_site.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';

//register page for registration of a new user
class RegisterSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          AppLocalizations.of(context)!.registerTitle!,
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterFormPage(),
    );
  }
}

class RegisterFormPage extends StatefulWidget {
  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                //name textField
                EntryFieldSite(
                  textCapitalValue: TextCapitalization.words,
                  banner: AppLocalizations.of(context)!
                      .registerFullName!
                      .toUpperCase(),
                  photo: 'images/icons/ic_name.png',
                  startingValue: 'George Anderson',
                ),
                //email textField
                EntryFieldSite(
                  textCapitalValue: TextCapitalization.none,
                  //controller: _emailController,
                  banner: AppLocalizations.of(context)!
                      .registerEmailAddress!
                      .toUpperCase(),
                  photo: 'images/icons/ic_mail.png',
                  typeOfKeyBoard: TextInputType.emailAddress,
                  startingValue: 'deliveryman@mail.com',
                ),

                //phone textField
                EntryFieldSite(
                  banner: AppLocalizations.of(context)!.phone!.toUpperCase(),
                  photo: 'images/icons/ic_phone.png',
                  typeOfKeyBoard: TextInputType.number,
                  startingValue: '+1 987 654 3210',
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    AppLocalizations.of(context)!.verificationTextType!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 12.8),
                  ),
                ),
                SizedBox(
                  height: 600,
                ),
              ],
            ),
          ),
        ),

        //continue button bar
        BottomBarSite(
            typeOfText: AppLocalizations.of(context)!.continueTextType,
            onClick: () {
              Navigator.pushNamed(context, SigninRoutes.verificationDetails);
            })
      ],
    );
  }
}
