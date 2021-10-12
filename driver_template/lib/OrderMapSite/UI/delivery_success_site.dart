import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class DeliverySuccessSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 3,
            child: Image.asset(
              'images/delivery done.png',
              // height: 236.7,
              // width: 210.7,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.deliveredProduct!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 20,
                color: Theme.of(context).secondaryHeaderColor,
                letterSpacing: 0.1),
          ),
          Text(
            AppLocalizations.of(context)!.thankYouVisitAgain!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Theme.of(context).secondaryHeaderColor,
                fontWeight: FontWeight.normal),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 31.0, right: 31.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.drivingYou!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Color(0xff818181)),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '18 min (6.5 km)',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      AppLocalizations.of(context)!.viewOrderDetails!,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: mainColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.earnItems!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Color(0xff818181)),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '\$ 4.50',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      AppLocalizations.of(context)!.earnDisplay!,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: mainColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          BottomBarSite(
            typeOfText: AppLocalizations.of(context)!.thenBackToHome,
            onClick: () =>
                Navigator.popAndPushNamed(context, RouterSite.accountSite),
          )
        ],
      ),
    );
  }
}
