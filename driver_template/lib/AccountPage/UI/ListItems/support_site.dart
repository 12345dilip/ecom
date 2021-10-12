import 'package:flutter/material.dart';
import 'package:delivery_app/AccountPage/UI/account_site.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';

class SupportSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AccountSite(),
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(AppLocalizations.of(context)!.supportSite!,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 48.0),
                color: Theme.of(context).cardColor,
                child: Image(
                  image: AssetImage("images/logo_delivery.png"),
                  height: 130.0,
                  width: 99.7,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 16.0),
                      child: Text(
                        AppLocalizations.of(context)!.writing!,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, bottom: 16.0),
                      child: Text(
                        AppLocalizations.of(context)!.enterWordings!,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    EntryFieldSite(
                      photo: 'images/icons/ic_phone.png',
                      banner: AppLocalizations.of(context)!.phone,
                      startingValue: '+1 987 654 3210',
                      readIndex: true,
                    ),
                    EntryFieldSite(
                      photo: 'images/icons/ic_mail.png',
                      banner: AppLocalizations.of(context)!.messageList,
                      hintText: AppLocalizations.of(context)!.typeToMessage,
                      maximumLines: 5,
                    ),
                  ],
                ),
              ),
              Spacer(),
              BottomBarSite(
                typeOfText: AppLocalizations.of(context)!.onSubmit,
                onClick: () {
                  /*............*/
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
