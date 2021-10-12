import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:spicy/Components/list_tile.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(SpicyLocalizations.of(context)!.account!,
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String? number;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserDetails(),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        BuildItemsListTile(
          smaller: true,
          photo: 'images/account/purse 2.png',
          textType: SpicyLocalizations.of(context)!.walletSite,
          onPressed: () => Navigator.pushNamed(context, PageRoutes.walletSite),
        ),
        AddressTile(),
        BuildItemsListTile(
          smaller: true,
          photo: 'images/account/heart (3) 1.png',
          textType: SpicyLocalizations.of(context)!.fav,
          onPressed: () => Navigator.pushNamed(
              context, PageRoutes.addFavourite), // addFavourite
        ),
        BuildItemsListTile(
            smaller: true,
            photo: 'images/account/terms-and-conditions (1) 1.png',
            textType: SpicyLocalizations.of(context)!.tnc,
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.termsAndConditionSite)),
        BuildItemsListTile(
            smaller: true,
            photo: 'images/account/help 1.png',
            textType: SpicyLocalizations.of(context)!.support,
            onPressed: () => Navigator.pushNamed(
                context, PageRoutes.supportSite,
                arguments: number)),
        BuildItemsListTile(
          smaller: true,
          photo: 'images/account/settings 2.png',
          textType: SpicyLocalizations.of(context)!.settings,
          onPressed: () => Navigator.pushNamed(context, PageRoutes.settings),
        ),
        LogoutTile(),
      ],
    );
  }
}

class AddressTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildItemsListTile(
        smaller: true,
        photo: 'images/account/location 1.png',
        textType: SpicyLocalizations.of(context)!.saved,
        onPressed: () {
          Navigator.pushNamed(context, PageRoutes.savedAddressesSite);
        });
  }
}

class LogoutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildItemsListTile(
      smaller: true,
      photo: 'images/account/logout (5) 1.png',
      textType: SpicyLocalizations.of(context)!.logout,
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(SpicyLocalizations.of(context)!.loggingOut!),
                content: Text(SpicyLocalizations.of(context)!.areYouSure!),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: transparentColor)),
                    ),
                    child: Text(
                      SpicyLocalizations.of(context)!.no!,
                      style: TextStyle(
                        color: mainColor,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                      child: Text(
                        SpicyLocalizations.of(context)!.yes!,
                        style: TextStyle(
                          color: mainColor,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: transparentColor)),
                      ),
                      onPressed: () {
                        Phoenix.rebirth(context);
                      })
                ],
              );
            });
      },
    );
  }
}

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('\n' + 'Watson',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 16.3)),
          Text('\n' + '+1 987 654 3210',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Color(0xff9a9a9a))),
          SizedBox(
            height: 5.0,
          ),
          Text('watson@mail.com',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Color(0xff9a9a9a))),
        ],
      ),
    );
  }
}
