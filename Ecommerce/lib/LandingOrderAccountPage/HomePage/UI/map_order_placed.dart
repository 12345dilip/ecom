import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/LandingOrderAccountPage/HomePage/UI/track_order_site.dart';
import 'package:spicy/LandingOrderAccountPage/HomePage/UI/view_order_site.dart';
import 'package:spicy/OrderMapBloc/order_map_bloc.dart';
import 'package:spicy/Themes/colors.dart';
import 'package:spicy/map_utils.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:timelines/timelines.dart';

class MapOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderMapBloc>(
      create: (context) => OrderMapBloc()..loadMap(),
      child: OrderMap(),
    );
  }
}

class OrderMap extends StatefulWidget {
  @override
  _OrderMapState createState() => _OrderMapState();
}

class _OrderMapState extends State<OrderMap> {
  bool openSlide = false;
  bool trackOrder = false;
  bool hideAlignment = false;
  @override
  void initState() {
    rootBundle.loadString('images/map_style.txt').then((string) {
      mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Theme.of(context).cardColor,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: mainColor,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: mainColor,
                  ))
            ],
            titleSpacing: 0.0,
            title: Text(
                openSlide
                    ? 'View Order'
                    : trackOrder
                        ? 'Track Order'
                        : 'Order Details',
                style: Theme.of(context).textTheme.caption!.copyWith(
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        top: 8.0,
                      ),
                      child: Text(
                        'Order ID - 0D222874085214758000',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 15.0,
                            letterSpacing: 0.06,
                            color: Colors.grey),
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18.0, top: 10.0, bottom: 70.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juice Nail Paint Combo 32 Petal Pink, Camel, Sun Kissed, Dusty',
                                maxLines: 2,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: mainTextColor),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Multicolor',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Seller: JK LIFESTYLE PRIVATE LIMITED',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                              Text(
                                '\$ 299',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: DotIndicator(
                                              color: mainColor,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 6.0),
                                            child: SizedBox(
                                              height: 80.0,
                                              child: SolidLineConnector(
                                                color: mainColor,
                                              ),
                                            ),
                                          ),
                                          DotIndicator(
                                            color: mainColor,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30.0, top: 4.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Ordered',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                      fontSize: 15.0,
                                                      color: mainTextColor,
                                                    )),
                                            Text('Fri, 17th Sep 21',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                        letterSpacing: 0.06,
                                                        color: Colors.grey)),
                                            SizedBox(
                                              height: 55.0,
                                            ),
                                            Text('Delivered',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                      fontSize: 15.0,
                                                      color: mainTextColor,
                                                    )),
                                            Text('Your item hasbeen delivered',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                        letterSpacing: 0.06,
                                                        color: Colors.grey)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Product has no-return policy',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                fontSize: 10.0,
                                                color: mainTextColor),
                                      ),
                                      Text(
                                        ' Know more',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                color: mainColor,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              Center(
                                child: RatingBar.builder(
                                  unratedColor: Colors.grey,
                                  itemSize: 30.0,
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: mainColor,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Divider(),
                            ])),
                  ),
                  openSlide
                      ? Align(
                          alignment: Alignment.bottomCenter,
                          child: ViewOrderSite(),
                        )
                      : SizedBox.shrink(),
                  trackOrder
                      ? Align(
                          alignment: Alignment.bottomCenter,
                          child: TrackOrderSite(),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            Column(
              children: [
                if (hideAlignment == false)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: whiteColor,
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 10.0, bottom: 15.0, right: 18.0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Stack(children: <Widget>[
                          Hero(
                            tag: 'Delivery Boy',
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundImage:
                                        AssetImage('images/profile.jpg'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'George Anderson',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                        Text(
                                          'Delivery Partner',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(
                                                  fontSize: 11.7,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffc2c2c2)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  Icon(
                                    Icons.chat,
                                    color: mainColor,
                                  ),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  Icon(
                                    Icons.phone,
                                    color: mainColor,
                                  )
                                ]),
                          ),
                        ]),
                      ),
                    ),
                  ),
                Container(
                  height: 60.0,
                  color: Theme.of(context).cardColor,
                  padding: EdgeInsets.only(left: 18.0, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '3 items',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Spacer(),
                      if (openSlide == false)
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                trackOrder = !trackOrder;
                                hideAlignment = !hideAlignment;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              width: 105,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFEEC8),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: mainColor)),
                              child: Row(
                                children: [
                                  Text(
                                    trackOrder
                                        ? "Close           "
                                        : "Track Order",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: mainColor, fontSize: 10),
                                  ),
                                  Icon(
                                    trackOrder
                                        ? Icons.keyboard_arrow_down_rounded
                                        : Icons.keyboard_arrow_up_rounded,
                                    color: mainColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        width: 5.0,
                      ),
                      if (trackOrder == false)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              openSlide = !openSlide;
                              hideAlignment = !hideAlignment;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            width: 105,
                            decoration: BoxDecoration(
                                color: Color(0xffFFEEC8),
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: mainColor)),
                            child: Row(
                              children: [
                                Text(
                                  openSlide ? "Close           " : "View Order",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: mainColor, fontSize: 10),
                                ),
                                Icon(
                                  openSlide
                                      ? Icons.keyboard_arrow_down_rounded
                                      : Icons.keyboard_arrow_up_rounded,
                                  color: mainColor,
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
