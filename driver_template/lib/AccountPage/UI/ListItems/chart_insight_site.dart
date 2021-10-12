import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/AccountPage/UI/account_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class ChartInsightSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AccountSite(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.chartInsight!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(context)!.insightToday!.toUpperCase(),
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 15.0, letterSpacing: 1.5, color: mainColor),
              ),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                color: mainColor,
                onPressed: () {
                  /*....*/
                },
              )
            ],
          )
        ],
      ),
      body: InsightDetailsPage(),
    );
  }
}

class InsightDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '64',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.ordersList!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '68 km',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.rideToInsight!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '\$302.50',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.earningDetails!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.earningDetails!.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
              Center(
                child: Image(
                  image: AssetImage("images/graph.png"),
                  height: 200.0,
                  color: secondaryColorsTheme,
                  colorBlendMode: BlendMode.color,
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, RouterSite.walletSite),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.viewAllDetails!.toUpperCase(),
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: mainColor,
                        letterSpacing: 1.33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.ordersList!.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
              Center(
                child: Image(
                  image: AssetImage("images/graph.png"),
                  height: 200.0,
                  color: secondaryColorsTheme,
                  colorBlendMode: BlendMode.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
