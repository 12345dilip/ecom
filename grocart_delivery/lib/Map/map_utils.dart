import 'package:flutter/material.dart';
import 'package:grocart_delivery/Pages/live_task_page.dart';
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
        backgroundColor: mainColor,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
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
                          height: 110.0,
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
                                  'PICKUP LOCATION',
                                  style: TextStyle(
                                      color: iconColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Yamuna Hotel',
                                  style: TextStyle(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                    '67/A2,Anna Nagar,Mainroad , Thoothukudi -628003',
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('DROP LOCATION',
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('Dilip Watto',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('77/A2,Spic Nagar,Thoothukudi -628004',
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
                  Text('EARNING DETAILS',
                      style: TextStyle(
                        color: iconColor,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Loculis lorem sed ornare turpis vitae sodales'),
                      Text('₹ 5.0')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Duis quis vivamus amet non leo tincidunt sit.'),
                      Text('₹ 35.0')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Earing",
                          style: TextStyle(
                            color: iconColor,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('₹ 40.0')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('*only order Earning is counted for incentives',
                      style: TextStyle(
                        color: iconColor,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text('DISTANCE DETAILS',
                      style: TextStyle(
                        color: iconColor,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('3.884km',
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          )),
                      Spacer(),
                      Text('1.884km',
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          )),
                      Spacer(),
                      Text('5.768km',
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('First Miles',
                          style: TextStyle(
                            color: iconColor,
                          )),
                      Spacer(),
                      Text('Last Miles',
                          style: TextStyle(
                            color: iconColor,
                          )),
                      Spacer(),
                      Text('Totals',
                          style: TextStyle(
                            color: iconColor,
                          ))
                    ],
                  )
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LiveTaskPage(
                                  )));
                    },
                    child: Text(
                      'CONFIRM ORDER',
                      style: TextStyle(color: whiteColor),
                    )),
              ))
        ],
      ),
    );
  }
}
