import 'package:flutter/material.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/Themes/colors.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  bool openSlide = false;

  bool trackOrder = false;
  bool hideAlignment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: kMainColor,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: kMainColor,
                  ))
            ],
            titleSpacing: 0.0,
            title: Text('View Order',
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
        body: Stack(
          children: [
            Container(
              color: Theme.of(context).cardColor,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
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
                                          'Scarlet Johnson',
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
                                    color: kMainColor,
                                  ),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  Icon(
                                    Icons.phone,
                                    color: kMainColor,
                                  )
                                ]),
                          ),
                        ]),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  'images/trone20.jpg',
                                  scale: 15.5,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30.0, left: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!
                                                .droneCam!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                          Text(
                                            'Qty - 1',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$ 5.00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  'images/headset 17.jpg',
                                  scale: 15.5,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30.0, left: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!
                                                .headBluetooth!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                          Text(
                                            'Qty - 1',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$ 5.00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  'images/stand14.jpg',
                                  scale: 15.5,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30.0, left: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!.lens!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                          Text(
                                            'Qty - 1',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$ 5.00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 8.0),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Text('payment info'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: kDisabledColor,
                                    fontSize: 13.3,
                                    fontWeight: FontWeight.bold)),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context)!.sub!,
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Text(
                                '\$ 19.50',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                              ),
                            ]),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context)!.service!,
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Text(
                                '\$ 1.50',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                              ),
                            ]),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context)!.cod!,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                              ),
                              Text(
                                '\$ 21.00',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60.0,
                color: Theme.of(context).cardColor,
                padding: EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '3 items',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Spacer(),
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
                            border: Border.all(color: kMainColor)),
                        child: Row(
                          children: [
                            Text(
                              openSlide ? "Close           " : "View Order",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: kMainColor, fontSize: 10),
                            ),
                            Icon(
                              openSlide
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.keyboard_arrow_up_rounded,
                              color: kMainColor,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
