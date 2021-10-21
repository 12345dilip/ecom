import 'package:flutter/material.dart';
import 'package:grocart/Components/textfield.dart';
import 'package:grocart/Components/list_tile.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';

class AddToWallet extends StatefulWidget {
  @override
  _AddToWalletState createState() => _AddToWalletState();
}

class _AddToWalletState extends State<AddToWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(backgroundColor: Theme.of(context).cardColor,
        title: Text(GrocartLocalizations.of(context)!.addingAmount!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
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
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: EntryField(
              GrocartLocalizations.of(context)!.enterAmountToAdd!.toUpperCase(),
              '\$ 500',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            color: Theme.of(context).cardColor,
            child: Text(GrocartLocalizations.of(context)!.addVia!.toUpperCase(),
                style: Theme.of(context).textTheme.caption!.copyWith(
                    color: disabledColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67)),
          ),
          BuildItemsListTile(
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.addingAmount),
            photo: 'images/payment/payment_card.png',
            textType: GrocartLocalizations.of(context)!.credit,
          ),
          BuildItemsListTile(
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.addingAmount),
            photo: 'images/payment/payment_card.png',
            textType: GrocartLocalizations.of(context)!.debit,
          ),
          BuildItemsListTile(
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.addingAmount),
            photo: 'images/payment/payment_paypal.png',
            textType: GrocartLocalizations.of(context)!.paypal,
          ),
          BuildItemsListTile(
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.addingAmount),
            photo: 'images/payment/payment_payu.png',
            textType: GrocartLocalizations.of(context)!.payU,
          ),
          BuildItemsListTile(
            onPressed: () =>
                Navigator.pushNamed(context, PageRoutes.addingAmount),
            photo: 'images/payment/payment_stripe.png',
            textType: GrocartLocalizations.of(context)!.stripe,
          ),
          Container(
            height: 150,
            color: Theme.of(context).cardColor,
          )
        ],
      ),
    );
  }
}
