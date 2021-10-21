import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart/Components/bottom_bar.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:grocart/Themes/theme_colors.dart';
import 'package:grocart/Components/textfield.dart';

class AddMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(GrocartLocalizations.of(context)!.addingAmount!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
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
      body: Add(),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FadedSlideAnimation(
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              GrocartLocalizations.of(context)!
                                  .availableBalance!
                                  .toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      letterSpacing: 0.67,
                                      color: hintColor,
                                      fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            '\$ 258.50',
                            style: listTitleTextStyle.copyWith(
                                fontSize: 35.0,
                                color: Colors.black,
                                letterSpacing: 0.18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              GrocartLocalizations.of(context)!
                                  .bankInfo!
                                  .toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.67,
                                      color: hintColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SmallSizeTextFormField(
                          GrocartLocalizations.of(context)!
                              .accountHolderName!
                              .toUpperCase(),
                          'Scarlet',
                        ),
                        SmallSizeTextFormField(
                          GrocartLocalizations.of(context)!
                              .bankName!
                              .toUpperCase(),
                          'HBNC Bank of New York',
                        ),
                        SmallSizeTextFormField(
                          GrocartLocalizations.of(context)!
                              .branchCode!
                              .toUpperCase(),
                          '+1 9655551781',
                        ),
                        SmallSizeTextFormField(
                          GrocartLocalizations.of(context)!
                              .accountNumber!
                              .toUpperCase(),
                          '4321 4567 6789 8901',
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmallSizeTextFormField(
                    GrocartLocalizations.of(context)!
                        .enterAmountToTransfer!
                        .toUpperCase(),
                    '\$ 500',
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
          beginOffset: Offset(0.0, 0.3),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            typeOftext: "Send to Bank",
            onClick: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
