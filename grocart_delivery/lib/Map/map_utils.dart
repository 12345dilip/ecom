import 'package:flutter/material.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:timelines/timelines.dart';

class MapUtils extends StatefulWidget {
  const MapUtils({Key? key}) : super(key: key);

  @override
  _MapUtilsState createState() => _MapUtilsState();
}

class _MapUtilsState extends State<MapUtils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: mainTextColor,
            )),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Column(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: mainColor,
                        ),
                        SizedBox(
                          height: 120.0,
                          child: DashedLineConnector(
                            color: mainColor,
                          ),
                        ),
                        Icon(
                          Icons.location_pin,
                          color: mainTextColor,
                        ),
                      ],
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 15.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GrocartLocalizations.of(context)!
                                      .pickupLocation!,
                                  style: TextStyle(
                                      color: iconColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  GrocartLocalizations.of(context)!.shopName!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.07,
                                          color: mainColor,
                                          fontSize: 17),
                                ),
                                Text(
                                    GrocartLocalizations.of(context)!
                                        .shopAddress!,
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    GrocartLocalizations.of(context)!
                                        .dropLocation!,
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                Text(
                                  GrocartLocalizations.of(context)!
                                      .customerName!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.07,
                                          color: mainColor,
                                          fontSize: 17),
                                ),
                                Text(
                                    GrocartLocalizations.of(context)!
                                        .deliveryAddress!,
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(GrocartLocalizations.of(context)!.earnDetails!,
                      style: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                            GrocartLocalizations.of(context)!.earnProduct1!,
                            style: TextStyle(fontSize: 13)),
                      ),
                      Text('₹ 5.0')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                            GrocartLocalizations.of(context)!.earnProduct2!,
                            style: TextStyle(fontSize: 13)),
                      ),
                      Text('₹ 35.0')
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(GrocartLocalizations.of(context)!.earnOrder!,
                          style: TextStyle(
                              color: iconColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text('₹ 40.0')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(GrocartLocalizations.of(context)!.incentives!,
                      style: TextStyle(color: iconColor, fontSize: 13)),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(GrocartLocalizations.of(context)!.distance!,
                      style: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('3.884km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      Spacer(),
                      Text('1.884km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      Spacer(),
                      Text('5.768km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(GrocartLocalizations.of(context)!.miles1!,
                          style: TextStyle(color: iconColor, fontSize: 13)),
                      Spacer(),
                      Text(GrocartLocalizations.of(context)!.miles2!,
                          style: TextStyle(color: iconColor, fontSize: 13)),
                      Spacer(),
                      Text(GrocartLocalizations.of(context)!.totals!,
                          style: TextStyle(color: iconColor, fontSize: 13))
                    ],
                  ),
                  SizedBox(
                    height: 40,
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
                      Navigator.pushNamed(context, PageRoutes.liveTaskPage);
                    },
                    child: Text(
                      GrocartLocalizations.of(context)!.confirm!,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ))
        ],
      ),
    );
  }
}
