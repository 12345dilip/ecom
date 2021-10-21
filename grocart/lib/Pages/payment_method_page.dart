import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:grocart/Components/list_tile.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';

class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadedSlideAnimation(
      Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Theme.of(context).cardColor,
            flexibleSpace: Container(
              padding: EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    GrocartLocalizations.of(context)!.selectPayment!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    GrocartLocalizations.of(context)!.amount! + '\$ 21.00',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: disabledColor),
                  ),
                ],
              ),
            ),
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
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 6.7,
              ),
              ListTile(
                onTap: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                leading: FadedScaleAnimation(
                  Image.asset(
                    'images/payment/payment_cod.png',
                    height: 37,
                  ),
                  durationInMilliseconds: 800,
                ),
                title: Text(
                  GrocartLocalizations.of(context)!.walletSite!,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold, letterSpacing: 0.07),
                ),
                trailing: Text(
                  '\$ 258.50',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: disabledColor),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                color: Theme.of(context).cardColor,
                child: Text(GrocartLocalizations.of(context)!.card!.toUpperCase(),
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: disabledColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.67)),
              ),
              BuildItemsListTile(
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                photo: 'images/payment/payment_card.png',
                textType: GrocartLocalizations.of(context)!.credit,
              ),
              BuildItemsListTile(
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                photo: 'images/payment/payment_card.png',
                textType: GrocartLocalizations.of(context)!.debit,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                color: Theme.of(context).cardColor,
                child: Text(
                  GrocartLocalizations.of(context)!.cash!.toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: disabledColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.67),
                ),
              ),
              BuildItemsListTile(
                photo: 'images/payment/payment_cod.png',
                textType: GrocartLocalizations.of(context)!.cod,
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                color: Theme.of(context).cardColor,
                child: Text(
                  GrocartLocalizations.of(context)!.other!.toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: disabledColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.67),
                ),
              ),
              BuildItemsListTile(
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                photo: 'images/payment/payment_paypal.png',
                textType: GrocartLocalizations.of(context)!.paypal,
              ),
              BuildItemsListTile(
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                photo: 'images/payment/payment_payu.png',
                textType: GrocartLocalizations.of(context)!.payU,
              ),
              BuildItemsListTile(
                onPressed: () =>
                    Navigator.pushNamed(context, PageRoutes.orderChoosePlaced),
                photo: 'images/payment/payment_stripe.png',
                textType: GrocartLocalizations.of(context)!.stripe,
              ),
              Container(
                height: 150,
                color: Theme.of(context).cardColor,
              )
            ],
          ),
        ),
      ),
      beginOffset: Offset(0.0, 0.3),
      endOffset: Offset(0, 0),
      slideCurve: Curves.linearToEaseOut,
    );
  }
}
