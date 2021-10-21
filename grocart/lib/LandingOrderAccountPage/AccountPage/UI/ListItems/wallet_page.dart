import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:grocart/Themes/theme_colors.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
            color: mainTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(GrocartLocalizations.of(context)!.walletSite!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {/*......*/},
          ),
        ],
      ),
      body: FadedSlideAnimation(
        WalletTile(),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class WalletTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GrocartLocalizations.of(context)!
                          .availableBalance!
                          .toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          letterSpacing: 0.67,
                          color: hintColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$ 258.50',
                      style: listTitleTextStyle.copyWith(
                          fontSize: 35.0,
                          color: mainTextColor,
                          letterSpacing: 0.18),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 46.0,
                  width: 134.0,
                  decoration: BoxDecoration(
                      color: mainColor, borderRadius: BorderRadius.circular(3)),
                  child: FadedScaleAnimation(
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: mainColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, PageRoutes.addingWallet),
                      child: Text(
                        GrocartLocalizations.of(context)!.addingAmount!,
                        style: bottomBarTextStyle.copyWith(
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    durationInMilliseconds: 800,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25),
          alignment: Alignment.bottomLeft,
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          color: Theme.of(context).cardColor,
          child: Text(
            GrocartLocalizations.of(context)!.recent!,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.08),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.ironBox!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('30 June 2018, 11.59 am',
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
                    '\$21.00',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 itemSite',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.speaker!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('10 June 2018, 11.59 am',
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
                    '\$15.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('2 itemSite',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.droneCam!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('4 June 2018, 11.59 am',
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
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('1 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.ac!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('29 June 2018, 9.59 am',
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
                    '-\$100.00',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff7ac81e)),
                  ),
                  SizedBox(height: 10.0),
                  Text('Send to bank',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.penDrive!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('10 June 2018, 11.59 am',
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
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('1 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.lens!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('3 itemSite | 30 June 2018, 11.59 am',
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
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(GrocartLocalizations.of(context)!.playStation!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('3 itemSite | 30 June 2018, 11.59 am',
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
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
