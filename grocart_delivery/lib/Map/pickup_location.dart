import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Pages/reached_pickup_location.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class PickupLocationPage extends StatefulWidget {
  const PickupLocationPage({Key? key}) : super(key: key);

  @override
  _PickupLocationPageState createState() => _PickupLocationPageState();
}

class _PickupLocationPageState extends State<PickupLocationPage> {
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
        backgroundColor: cardBackgroundColor,
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
            Text(
              GrocartLocalizations.of(context)!.pickupLocation!,
              style: TextStyle(color: mainTextColor, fontSize: 15),
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
                  border: Border.all(width: 1, color: iconColor)),
              child: Center(
                child: Text(
                  GrocartLocalizations.of(context)!.help!,
                  style: TextStyle(color: mainTextColor),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Image.asset("images/location/map.jpeg"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    width: double.infinity,
                    height: 118,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  onPressed: _openMap,
                                  icon: Icon(
                                    Icons.directions,
                                    color: mainColor,
                                  ))),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 70,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    GrocartLocalizations.of(context)!.shopName!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    GrocartLocalizations.of(context)!
                                        .shopAddress!,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: mainColor,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReachedPickup()));
                      },
                      child: Text(
                        GrocartLocalizations.of(context)!.reachedPickup!,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
