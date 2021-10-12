import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/ThemeSite/style_theme.dart';

class AddToBanking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.goToBanking!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
      ),
      body: AddToSite(),
    );
  }
}

class AddToSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
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
                          AppLocalizations.of(context)!
                              .toBalencedAvailable!
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
                        '\$ 520.50',
                        style: listTitleTextStyle.copyWith(
                            fontSize: 35.0,
                            color: mainTextColor,
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
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      AppLocalizations.of(context)!.bankDetails!.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: hintColor),
                    ),
                  ),
                  EntryFieldSite(
                    textCapitalValue: TextCapitalization.words,
                    banner:
                        AppLocalizations.of(context)!.accHolder!.toUpperCase(),
                    startingValue: 'Samantha Smith',
                  ),
                  EntryFieldSite(
                    textCapitalValue: TextCapitalization.words,
                    banner: AppLocalizations.of(context)!
                        .nameOfTheBank!
                        .toUpperCase(),
                    startingValue: 'HBNC Bank of New York',
                  ),
                  EntryFieldSite(
                    textCapitalValue: TextCapitalization.none,
                    banner: AppLocalizations.of(context)!
                        .codeOfTheBranch!
                        .toUpperCase(),
                    startingValue: '+1 987 654 3210',
                  ),
                  EntryFieldSite(
                    textCapitalValue: TextCapitalization.none,
                    banner:
                        AppLocalizations.of(context)!.accNumber!.toUpperCase(),
                    startingValue: '4321 4567 6789 8901',
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: EntryFieldSite(
                textCapitalValue: TextCapitalization.words,
                banner:
                    AppLocalizations.of(context)!.transferAmount!.toUpperCase(),
                startingValue: '\$ 500',
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBarSite(
            typeOfText: AppLocalizations.of(context)!.goToBanking,
            onClick: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
