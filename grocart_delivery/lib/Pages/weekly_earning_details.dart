import 'package:flutter/material.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:timelines/timelines.dart';

class WeeklyEarningDetails extends StatefulWidget {
  const WeeklyEarningDetails({Key? key}) : super(key: key);

  @override
  _WeeklyEarningDetailsState createState() => _WeeklyEarningDetailsState();
}

class _WeeklyEarningDetailsState extends State<WeeklyEarningDetails> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.location_pin,
                            color: mainColor,
                          ),
                          Container(
                              height: 85,
                              child: DashedLineConnector(
                                color: iconColor,
                              )),
                          Icon(
                            Icons.location_pin,
                            color: mainTextColor,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
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
                          SizedBox(
                            height: 50,
                          ),
                          Text(GrocartLocalizations.of(context)!.dropLocation!,
                              style: TextStyle(
                                  color: iconColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 135, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          GrocartLocalizations.of(context)!.customerName!,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.07,
                                  color: mainColor,
                                  fontSize: 17),
                        ),
                        Text(GrocartLocalizations.of(context)!.deliveryAddress!,
                            style: TextStyle(
                                color: iconColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 11))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
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
                    child: Text(GrocartLocalizations.of(context)!.earnProduct1!,
                        style: TextStyle(fontSize: 13)),
                  ),
                  Text('₹ 5.0',
                      style: TextStyle(color: mainTextColor, fontSize: 15))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(GrocartLocalizations.of(context)!.earnProduct2!,
                        style: TextStyle(fontSize: 13)),
                  ),
                  Text('₹ 35.0',
                      style: TextStyle(color: mainTextColor, fontSize: 15))
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
                  Text('₹ 40.0',
                      style: TextStyle(color: mainTextColor, fontSize: 15))
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3.884km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(GrocartLocalizations.of(context)!.miles1!,
                          style: TextStyle(color: iconColor, fontSize: 13)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1.884km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(GrocartLocalizations.of(context)!.miles2!,
                          style: TextStyle(color: iconColor, fontSize: 13)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5.768km',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(GrocartLocalizations.of(context)!.totals!,
                          style: TextStyle(color: iconColor, fontSize: 13))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
