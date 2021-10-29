import 'package:flutter/material.dart';
import 'package:grocart_delivery/Map/map_utils.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.grid_4x4_outlined)),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.money))
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
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
                    Spacer(),
                    Text('Shift Details'),
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
                  height: 200,
                  child: SfRadialGauge(axes: <RadialAxis>[
                    RadialAxis(
                        interval: 10,
                        startAngle: 0,
                        endAngle: 360,
                        showTicks: false,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(thickness: 20),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 5,
                              width: 20,
                              color: mainColor,
                              enableAnimation: true,
                              cornerStyle: CornerStyle.bothCurve)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text('₹ 0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40)),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'So Far ThisWeek',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
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
                height: 20.0,
              ),
              Text(
                'Complete more task & earn more',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                height: 50,
                minWidth: 200,
                child: RaisedButton(
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MapUtils()));
                  },
                  child: Text(
                    'START DUTY',
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 155,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: mainColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Upcomming Orders',
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 155,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: mainColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Orders Deliverd',
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
