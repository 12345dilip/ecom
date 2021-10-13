import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Components/bottom_bar.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: FadedSlideAnimation(
        Column(
          children: <Widget>[
            Spacer(),
            Expanded(
              flex: 3,
              child: FadedScaleAnimation(
                Image.asset(
                  'images/order_placed.png',
                ),
                durationInMilliseconds: 800,
              ),
            ),
            Spacer(),
            Text(
              SpicyLocalizations.of(context)!.placed!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 23.3),
            ),
            Text(
              SpicyLocalizations.of(context)!.thanks!,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: disabledColor, fontSize: 18),
            ),
            Spacer(),
            BottomBar(
              typeOftext: SpicyLocalizations.of(context)!.orderText,
              onClick: () => Navigator.pushNamed(context, PageRoutes.orderSite),
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
