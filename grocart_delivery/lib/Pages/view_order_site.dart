import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewOrderSite extends StatefulWidget {
  @override
  _ViewOrderSiteState createState() => _ViewOrderSiteState();
}

class _ViewOrderSiteState extends State<ViewOrderSite> {
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
      backgroundColor: Theme.of(context).cardColor,
      body: Hero(
        tag: 'Delivery Boy',
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 2,
                          child: Checkbox(
                              activeColor: Colors.green,
                              shape: CircleBorder(),
                              tristate: false,
                              value: true,
                              splashRadius: 30,
                              onChanged: (value) {}),
                        ),
                        Text(
                          GrocartLocalizations.of(context)!.paymentSuccess!,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: iconColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                        ),
                        Spacer(),
                        Container(
                          width: 40,
                          height: 40,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: whiteColor,
                              )),
                          decoration: BoxDecoration(
                            color: mainColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'images/location/LOCATION ICON-3.png',
                          scale: 1.8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GrocartLocalizations.of(context)!.dropLocation!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.07,
                                      fontSize: 17),
                            ),
                            Text(
                              GrocartLocalizations.of(context)!.customerName!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.07,
                                      color: iconColor,
                                      fontSize: 17),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: _openMap,
                            icon: Image.asset(
                              'images/location/arrow.png',
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GrocartLocalizations.of(context)!.address!,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.07,
                                    fontSize: 17),
                          ),
                          Text('77/A2',
                              style: TextStyle(color: iconColor, fontSize: 15)),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            GrocartLocalizations.of(context)!.moreDetails!,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.07,
                                    fontSize: 17),
                          ),
                          Text(
                              GrocartLocalizations.of(context)!
                                  .deliveryAddress!,
                              style: TextStyle(color: iconColor, fontSize: 15)),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            GrocartLocalizations.of(context)!.landMark!,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.07,
                                    fontSize: 17),
                          ),
                          Text(
                              GrocartLocalizations.of(context)!
                                  .landMarkDetails!,
                              style: TextStyle(color: iconColor, fontSize: 15)),
                          SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(GrocartLocalizations.of(context)!.call!,
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15))
                              ],
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  ],
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
                      Navigator.pushNamed(
                          context, PageRoutes.homeOrderAccountSite);
                    },
                    child: Text(
                      GrocartLocalizations.of(context)!.completeDelivery!,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: whiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
