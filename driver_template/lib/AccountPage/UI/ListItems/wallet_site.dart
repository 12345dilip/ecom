import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/AccountPage/UI/account_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/ThemeSite/style_theme.dart';

class WalletSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AccountSite(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.headToWallet!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {/*......*/},
          ),
        ],
      ),
      body: WalletDetails(),
    );
  }
}

class WalletDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          // physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context)!
                        .toBalencedAvailable!
                        .toUpperCase(),
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        letterSpacing: 0.67,
                        color: hintColor,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '\$ 520.50',
                    style: listTitleTextStyle.copyWith(
                        fontSize: 35.0,
                        color: mainTextColor,
                        letterSpacing: 0.18),
                  ),
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context)!.recentOrder!,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.08),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                    buildWallet(context),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned.directional(
          textDirection: Directionality.of(context),
          top: 70.0,
          end: 20.0,
          child: Container(
            height: 46.0,
            width: 134.0,
            color: mainColor,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, RouterSite.addToBank),
              child: Text(
                AppLocalizations.of(context)!.goToBanking!,
                style: bottomBarTextStyle.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildWallet(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(AppLocalizations.of(context)!.shopName!,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              Text('3 items | 30 June 2018, 11.59 am',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: textColor, fontSize: 11.7)),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '\$80.00',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.0),
              Text(AppLocalizations.of(context)!.onlineStatus!,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: textColor, fontSize: 11.7)),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '\$5.20',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.0),
              Text(AppLocalizations.of(context)!.earningDetails!,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: textColor, fontSize: 11.7)),
            ],
          ),
        ],
      ),
    );
  }
}
