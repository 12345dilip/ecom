import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Pages/collect_cash.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DeliveryLocation extends StatefulWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  _DeliveryLocationState createState() => _DeliveryLocationState();
}

class _DeliveryLocationState extends State<DeliveryLocation> {
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
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              GrocartLocalizations.of(context)!.delivery!,
              style: TextStyle(color: whiteColor, fontSize: 15),
            ),
            Text(
              '9500340738',
              style: TextStyle(color: iconColor, fontSize: 15),
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
                  border: Border.all(width: 1, color: whiteColor)),
              child: Center(
                child: Text(
                  GrocartLocalizations.of(context)!.help!,
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          )
        ],
        backgroundColor: mainColor,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("images/location/map3.jpeg"),
                  Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_pin,
                                size: 40,
                              ),
                              Text(
                                GrocartLocalizations.of(context)!.customerName!,
                                style: TextStyle(
                                    color: iconColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: _openMap,
                                  icon: Icon(
                                    Icons.directions,
                                    size: 40,
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
                                GrocartLocalizations.of(context)!.address!,
                                style: TextStyle(
                                    color: mainTextColor, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '77/A2',
                                style: TextStyle(
                                  color: iconColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                GrocartLocalizations.of(context)!.moreDetails!,
                                style: TextStyle(
                                    color: mainTextColor, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                GrocartLocalizations.of(context)!
                                    .deliveryAddress!,
                                style: TextStyle(
                                  color: iconColor,
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
                            fontSize: 40),
                      )),
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: iconColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      GrocartLocalizations.of(context)!.collectCustomer!,
                      style: TextStyle(
                          color: mainColor, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '₹ 150',
                      style: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: mainColor,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CollectCash()));
                  },
                  child: Text(
                    GrocartLocalizations.of(context)!.reachedDeliveryLocation!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
