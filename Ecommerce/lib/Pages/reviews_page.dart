import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Themes/colors.dart';

class Review {
  final String? heading;
  final double reviewRating;
  final String date;
  final String? contentType;

  Review(this.heading, this.reviewRating, this.date, this.contentType);
}

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    var appLocalization = SpicyLocalizations.of(context)!;
    final List<Review> typeOfReviewsList = [
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name3, 4.0, '11 April, 20', appLocalization.content1),
      Review(
          appLocalization.name4, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name5, 4.0, '9 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name1, 4.0, '4 April, 20', appLocalization.content1),
      Review(
          appLocalization.name3, 5.0, '23 Feb, 20', appLocalization.content2),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: AppBar(
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(SpicyLocalizations.of(context)!.ironBox!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).secondaryHeaderColor)),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xff7ac81e),
                      size: 13,
                    ),
                    SizedBox(width: 8.0),
                    Text('4.2',
                        style: Theme.of(context)
                            .textTheme
                            .overline!
                            .copyWith(color: Color(0xff7ac81e))),
                    SizedBox(width: 8.0),
                    Text('148 reviews',
                        style: Theme.of(context).textTheme.overline),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 8.0,
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: FadedSlideAnimation(
        ListView.builder(
            itemCount: typeOfReviewsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      typeOfReviewsList[index].heading!,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 15.0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff7ac81e),
                            size: 13,
                          ),
                          SizedBox(width: 8.0),
                          Text(typeOfReviewsList[index].reviewRating.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Color(0xff7ac81e))),
                          Spacer(),
                          Text(
                            typeOfReviewsList[index].date,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontSize: 11.7, color: Color(0xffd7d7d7)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      typeOfReviewsList[index].contentType!,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Color(0xff6a6c74)),
                    )
                  ],
                ),
              );
            }),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
