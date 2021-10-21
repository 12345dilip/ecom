import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Themes/colors.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,color: mainTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(GrocartLocalizations.of(context)!.addOffers!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Tap to Copy",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ))
        ],
      ),
      body: FadedSlideAnimation(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: ListView(
            children: [
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
              buildOfferList(context),
            ],
          ),
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Widget buildOfferList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListTile(
          title: Text(
            GrocartLocalizations.of(context)!.buy!,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(GrocartLocalizations.of(context)!.buy1!,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 10.0, color: Theme.of(context).hintColor)),
          trailing: FittedBox(
            child: Row(
              children: [
                RotatedBox(
                    quarterTurns: 1,
                    child: Text('---------',
                        style: TextStyle(color: Colors.grey[200]))),
                SizedBox(
                  width: 5.0,
                ),
                FadedScaleAnimation(
                  Text('FFB2G1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: mainColor)),
                  durationInMilliseconds: 800,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
