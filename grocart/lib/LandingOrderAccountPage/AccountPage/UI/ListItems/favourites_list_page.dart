import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Themes/colors.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(GrocartLocalizations.of(context)!.fav!,
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/iron.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.ironBox!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.ironBox!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/mobile.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.electronics!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.mobile!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/stand14.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.lens!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.drone!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/monitor.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.brandInTv!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.tv!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/table fan.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.fan!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.fan!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/headset 17.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.headBluetooth!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.headSet!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadedScaleAnimation(
                  Image(
                    image: AssetImage("images/joy 18.jpg"),
                    height: 93.3,
                  ),
                  durationInMilliseconds: 800,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(GrocartLocalizations.of(context)!.playStation!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(GrocartLocalizations.of(context)!.play!,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: lightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                  ],
                ),
                Spacer(),
                FadedSlideAnimation(
                  Image.asset(
                    'images/ic_favorite.png',
                    color: mainColor,
                    scale: 3,
                  ),
                  beginOffset: Offset(0.0, 6),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
