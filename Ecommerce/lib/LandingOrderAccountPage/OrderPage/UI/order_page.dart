import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:spicy/LandingOrderAccountPage/HomePage/UI/map_order_placed.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Themes/colors.dart';

class OrderPage extends StatefulWidget {
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: mainColor,
              )),
          title: Text(
            SpicyLocalizations.of(context)!.orderText!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18.3,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.search,
                color: mainColor,
              ),
            )
          ],
        ),
        body: Container(
          color: whiteColor,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Delivered on Sep 23',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15.0, color: mainTextColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            SpicyLocalizations.of(context)!.ironBox!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0, color: mainTextColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapOrderPage(),
                              ));
                        },
                        icon: Icon(Icons.chevron_right_sharp,
                            color: mainTextColor))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: RatingBar.builder(
                  unratedColor: Colors.grey,
                  itemSize: 20.0,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 17.0, top: 10.0, bottom: 20.0),
                child: Text(
                  'Rate this product now',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 15.0, color: mainTextColor),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Delivered on Sep 23',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15.0, color: mainTextColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            SpicyLocalizations.of(context)!.lens!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0, color: mainTextColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapOrderPage(),
                              ));
                        },
                        icon: Icon(Icons.chevron_right_sharp,
                            color: mainTextColor))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: RatingBar.builder(
                  unratedColor: Colors.grey,
                  itemSize: 20.0,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 17.0, top: 10.0, bottom: 20.0),
                child: Text(
                  'Rate this product now',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 15.0, color: mainTextColor),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Delivered on Sep 23',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15.0, color: mainTextColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            SpicyLocalizations.of(context)!.mobile!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0, color: mainTextColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapOrderPage(),
                              ));
                        },
                        icon: Icon(Icons.chevron_right_sharp,
                            color: mainTextColor))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: RatingBar.builder(
                  unratedColor: Colors.grey,
                  itemSize: 20.0,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 17.0, top: 10.0, bottom: 20.0),
                child: Text(
                  'Write a Review',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 15.0, color: mainTextColor),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Delivered on Sep 23',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 15.0, color: mainTextColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            SpicyLocalizations.of(context)!.laptop!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0, color: mainTextColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapOrderPage(),
                              ));
                        },
                        icon: Icon(Icons.chevron_right_sharp,
                            color: mainTextColor))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: RatingBar.builder(
                  unratedColor: Colors.grey,
                  itemSize: 20.0,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 17.0, top: 10.0, bottom: 20.0),
                child: Text(
                  'Rate this product now',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 15.0, color: mainTextColor),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 3.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
