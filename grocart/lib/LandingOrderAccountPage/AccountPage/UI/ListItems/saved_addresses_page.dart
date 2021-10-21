import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:grocart/Components/bottom_bar.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:grocart/Themes/theme_colors.dart';

class Address {
  final String iconFile;
  final String? typeOfAddress;
  final String address;

  Address(this.iconFile, this.typeOfAddress, this.address);
}

class SavedAddressesPage extends StatelessWidget {
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
          title: Text(
            GrocartLocalizations.of(context)!.saved!,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: mainTextColor),
          ),
        ),
        body: SavedAddresses());
  }
}

class SavedAddresses extends StatefulWidget {
  @override
  _SavedAddressesState createState() => _SavedAddressesState();
}

class _SavedAddressesState extends State<SavedAddresses> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Address> listOfAddressTypes = [
      Address(
          'images/address/home (1) 2.png',
          GrocartLocalizations.of(context)!.homeText,
          'Flat Num 114, First Floor, Central Residency\n1024, Central Residency, Hemilton Park,\nNew York, USA'),
      Address(
          'images/address/building 2.png',
          GrocartLocalizations.of(context)!.office,
          'Flat Num 114, First Floor, Central Residency\n1024, Central Residency, Hemilton Park,\nNew York, USA'),
      Address(
          'images/address/flat 2 (1).png',
          GrocartLocalizations.of(context)!.other,
          'Flat Num 114, First Floor, Central Residency\n1024, Central Residency, Hemilton Park,\nNew York, USA'),
    ];
    return FadedSlideAnimation(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: 6.7,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 6.0),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Theme.of(context).cardColor,
                              child: FadedScaleAnimation(
                                Image.asset(
                                  listOfAddressTypes[index].iconFile,
                                  scale: 2.7,
                                ),
                                durationInMilliseconds: 800,
                              ),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: Text(
                                listOfAddressTypes[index].typeOfAddress!,
                                style: listTitleTextStyle,
                              ),
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                listOfAddressTypes[index].address,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(fontSize: 11.7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  })),
          BottomBar(
            themeColor: Theme.of(context).scaffoldBackgroundColor,
            typeOftext: '+ ' + GrocartLocalizations.of(context)!.addNew!,
            typeOftextColor: mainTextColor,
            onClick: () {
              Navigator.pushNamed(context, PageRoutes.locationSite);
            },
          ),
        ],
      ),
      beginOffset: Offset(0.0, 0.3),
      endOffset: Offset(0, 0),
      slideCurve: Curves.linearToEaseOut,
    );
  }
}
