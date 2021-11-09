import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Pages/view_order_site.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DeliveryLocation extends StatefulWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  _DeliveryLocationState createState() => _DeliveryLocationState();
}

class _DeliveryLocationState extends State<DeliveryLocation> {
  bool openSlide = false;

  _openMap() async {
    const url = 'https://www.google.com/maps/search/?api=1&query=52.32,4.917';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: mainTextColor,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(GrocartLocalizations.of(context)!.delivery!,
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              '9500340738',
              style: TextStyle(
                color: iconColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: iconColor)),
              child: Center(
                child: Text(
                  GrocartLocalizations.of(context)!.help!,
                  style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          )
        ],
        backgroundColor: whiteColor,
      ),
      body: openSlide
          ? Align(
              alignment: Alignment.bottomCenter,
              child: ViewOrderSite(),
            )
          : Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          "images/location/map3.jpeg",
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Colors.grey.shade300,
                    width: double.infinity,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        children: [
                          Container(
                            child: Center(
                                child: Text(
                              '₹',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            GrocartLocalizations.of(context)!.collectCustomer!,
                            style: TextStyle(
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            '₹ 150',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 15.0, top: 5),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.black54,
                                      size: 40,
                                    ),
                                    Text(
                                      GrocartLocalizations.of(context)!
                                          .customerName!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.07,
                                              color: Colors.black54,
                                              fontSize: 17),
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: _openMap,
                                        icon: Icon(
                                          Icons.directions,
                                          size: 35,
                                          color: mainColor,
                                        ))
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      GrocartLocalizations.of(context)!
                                          .address!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.07,
                                              color: mainTextColor,
                                              fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      GrocartLocalizations.of(context)!
                                          .deliveryAddress!,
                                      style: TextStyle(
                                          color: iconColor, fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: mainColor,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                      color: Theme.of(context).cardColor,
                                      child: SingleChildScrollView(
                                          child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0,
                                            right: 15.0,
                                            top: 20.0,
                                            bottom: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Text(
                                              GrocartLocalizations.of(context)!
                                                  .collectCash!,
                                              style: TextStyle(
                                                  color: mainTextColor,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              GrocartLocalizations.of(context)!
                                                  .actualPaid!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                                decoration: InputDecoration(
                                              labelText: "Enter Amount",
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                            )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              GrocartLocalizations.of(context)!
                                                  .reEnterAmount!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                                decoration: InputDecoration(
                                              labelText: "Re-Enter Amount",
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                            )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              GrocartLocalizations.of(context)!
                                                  .nuericField!,
                                              style: TextStyle(
                                                  color: mainColor,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                color: mainColor,
                                                width: double.infinity,
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      openSlide = !openSlide;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    GrocartLocalizations.of(
                                                            context)!
                                                        .cashCollect!,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1!
                                                        .copyWith(
                                                            color: whiteColor,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )));
                                },
                              );
                            },
                            child: Text(
                              GrocartLocalizations.of(context)!
                                  .reachedDeliveryLocation!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: whiteColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
    );
  }
}
