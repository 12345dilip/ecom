import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:spicy/Components/bottom_bar.dart';
import 'package:spicy/Components/textfield.dart';

import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Themes/colors.dart';

class RatingNow extends StatefulWidget {
  @override
  _RatingNowState createState() => _RatingNowState();
}

class _RatingNowState extends State<RatingNow> {
  TextEditingController _ratingController = TextEditingController();
  double? ratingNow;

  @override
  void dispose() {
    _ratingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).cardColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: AppBar(backgroundColor: Theme.of(context).cardColor,
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
            centerTitle: true,
            title: Text(SpicyLocalizations.of(context)!.rateNowSite!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: mainTextColor)),
          ),
        ),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              children: [
                Text(
                  SpicyLocalizations.of(context)!.how!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  SpicyLocalizations.of(context)!.withR!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: FadedScaleAnimation(
                    Image.asset(
                      'images/Restaurants/Layer 1.png',
                      height: 83.3,
                      width: 83.3,
                    ),
                    durationInMilliseconds: 800,
                  ),
                ),
                Text(
                  SpicyLocalizations.of(context)!.ironBox!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  SpicyLocalizations.of(context)!.desIron!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 10.0, color: Color(0xff888888)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 44.0),
                  child: Center(
                    child: RatingBar.builder(
                      minRating: 1,
                      itemCount: 5,
                      glowColor: transparentColor,
                      unratedColor: Color(0xffe6e6e6),
                      onRatingUpdate: (value) {
                        ratingNow = value;
                      },
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: mainColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      SpicyLocalizations.of(context)!.addReview!.toUpperCase(),
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.0,
                          color: Color(0xff838383),
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: EntryField(
                    null,
                    SpicyLocalizations.of(context)!.writeReview,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(
                  onClick: () => Navigator.pop(context),
                  typeOftext: SpicyLocalizations.of(context)!.feedback),
            )
          ],
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
