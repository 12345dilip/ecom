import 'package:flutter/material.dart';
import 'package:grocart_delivery/Languages/locals.dart';
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
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: Image.asset(
          'images/icons/Menu bar.png',
          scale: 3.3,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Image.asset(
                  'images/icons/map.png',
                  scale: 3.3,
                ),
                Image.asset(
                  'images/icons/bells.png',
                  scale: 3.3,
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'images/icons/alarm.png',
                      scale: 3.5,
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
                          size: 35,
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
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "images/Wallet.png",
                                        scale: 2.8,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: whiteColor),
                                          ),
                                          Text(
                                            '980',
                                            style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, PageRoutes.orderPage);
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                GrocartLocalizations.of(
                                                        context)!
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
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "images/Wallet.png",
                                        scale: 2.8,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: whiteColor),
                                          ),
                                          Text(
                                            '8850',
                                            style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, PageRoutes.orderPage);
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                GrocartLocalizations.of(
                                                        context)!
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
                                        scale: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '₹ ',
                                          style: TextStyle(
                                              fontSize: 20, color: whiteColor),
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
                                      Image.asset("images/Clock.png", scale: 2),
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
