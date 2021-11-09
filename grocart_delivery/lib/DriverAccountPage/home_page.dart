import 'package:flutter/material.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Map/map_utils.dart';
import 'package:grocart_delivery/Pages/weekly_earning_details.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> myProducts =
      List.generate(4, (index) => {"id": index, "name": "Product "}).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_on,
              color: mainTextColor,
            )),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_book_outlined,
                    color: mainTextColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: mainTextColor,
                  ))
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: iconColor,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.watch,
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(GrocartLocalizations.of(context)!.shift!),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right,
                          color: mainColor,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  height: 180,
                  child: SfRadialGauge(axes: <RadialAxis>[
                    RadialAxis(
                        interval: 10,
                        startAngle: 0,
                        endAngle: 360,
                        showTicks: false,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(thickness: 15),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 5,
                              width: 15,
                              color: mainColor,
                              enableAnimation: true,
                              cornerStyle: CornerStyle.bothCurve)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text('₹ 0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40)),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      Text(
                                        GrocartLocalizations.of(context)!
                                            .farThisWeek!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              angle: 250,
                              positionFactor: 0.1)
                        ])
                  ]),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                GrocartLocalizations.of(context)!.taskComplete!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                height: 40,
                minWidth: 180,
                child: RaisedButton(
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.pushNamed(context, PageRoutes.mapUtils);
                  },
                  child: Text(
                    GrocartLocalizations.of(context)!.startDuty!,
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 5.0),
                                      child: Image.asset(
                                        "images/Wallet.png",
                                        scale: 1.5,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '₹ ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          '980',
                                          style: TextStyle(
                                              color: whiteColor, fontSize: 20),
                                        )
                                      ],
                                    ),
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context,
                                              PageRoutes.earnWeeklyDetails);
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              GrocartLocalizations.of(context)!
                                                  .earnToday!,
                                              style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 12),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: whiteColor,
                                              size: 17,
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                                color: mainColor,
                                height: 130,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 5.0),
                                      child: Image.asset(
                                        "images/Wallet.png",
                                        scale: 1.5,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '₹ ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          '8850',
                                          style: TextStyle(
                                              color: whiteColor, fontSize: 20),
                                        )
                                      ],
                                    ),
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context,
                                              PageRoutes.earnWeeklyDetails);
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              GrocartLocalizations.of(context)!
                                                  .earnWeekly!,
                                              style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 12),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: whiteColor,
                                              size: 17,
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                                color: mainColor,
                                width: MediaQuery.of(context).size.width,
                                height: 130,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 10),
                                      child: Image.asset(
                                        "images/Money Bag Krona.png",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '₹ ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          '980',
                                          style: TextStyle(
                                              color: whiteColor, fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                color: mainColor,
                                width: MediaQuery.of(context).size.width,
                                height: 130,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "images/Clock.png",
                                        scale: 1.2,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '10:05 min',
                                        style: TextStyle(
                                            color: whiteColor, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                color: mainColor,
                                width: MediaQuery.of(context).size.width,
                                height: 130,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
