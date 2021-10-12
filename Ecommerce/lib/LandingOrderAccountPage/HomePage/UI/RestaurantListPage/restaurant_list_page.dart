import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Themes/colors.dart';
import 'package:spicy/Pages/items_list.dart';

class RestaurantListPage extends StatelessWidget {
  final String? pageHeading;
  final bool book;

  RestaurantListPage(this.pageHeading, [this.book = false]);

  final int totalNoOfStores = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(backgroundColor: Theme.of(context).cardColor,
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
        title: Text(
          pageHeading!,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {/*......*/},
          ),
        ],
      ),
      body: FadedSlideAnimation(
        ListView(
          physics: BouncingScrollPhysics(),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Text(
                '$totalNoOfStores ' +
                    SpicyLocalizations.of(context)!.storeFound!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: hintColor, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.ironBox,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/Layer 1.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.ironBox!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.ironBox!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.2',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('6.4 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.storee,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/Layer 2.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.drone!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.drone!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.8',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('8.9 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.jesica,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/Layer 3.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.ac!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.desAC!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.5',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('5.0 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.fish,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/layer4.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.dresses!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.desFan!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.8',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('8.9 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.seven,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/layer5.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.perfume!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.drone!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.8',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('8.9 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsListPage(
                        SpicyLocalizations.of(context)!.operum,
                        book ? true : false),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                child: Row(
                  children: <Widget>[
                    FadedScaleAnimation(
                      Image(
                        image: AssetImage("images/Restaurants/layer6.png"),
                        height: 93.3,
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(SpicyLocalizations.of(context)!.mike!,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        Text(SpicyLocalizations.of(context)!.speaker!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: hintColor, fontSize: 10.0)),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xff7ac81e),
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('4.8',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Color(0xff7ac81e),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10.3),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: iconColor,
                              size: 15,
                            ),
                            SizedBox(width: 10.0),
                            Text('8.9 km ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                            Text('| ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: mainColor, fontSize: 10.0)),
                            Text(SpicyLocalizations.of(context)!.storeAddress!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: hintColor, fontSize: 10.0)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
