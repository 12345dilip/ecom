import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Pages/delivery_location.dart';
import 'package:grocart_delivery/Pages/reached_pickup_location.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

var itemCount;

class LiveTaskPage extends StatefulWidget {
  @override
  _LiveTaskPageState createState() => _LiveTaskPageState();
}

class _LiveTaskPageState extends State<LiveTaskPage> {
  @override
  void initState() {
    super.initState();
    print(itemCount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: Stack(
        children: [
          itemCount != true
              ? SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live Task',
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Container(
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: iconColor,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 50,
                                          color: Colors.blue,
                                          child: Icon(
                                            Icons.location_pin,
                                            color: mainColor,
                                            size: 50,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 15.0,
                                                top: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'PICKUP LOCATION - 9500340738',
                                                  style: TextStyle(
                                                      color: iconColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text(
                                                  'Yamuna Hotel',
                                                  style: TextStyle(
                                                      color: mainColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text(
                                                    '67/A2,Anna Nagar,Mainroad , Thoothukudi -628003',
                                                    style: TextStyle(
                                                        color: iconColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: mainColor,
                                          minimumSize: Size(90, 10),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(
                                          Icons.chevron_right,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReachedPickup()));
                                        },
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 50.0,
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: iconColor,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 50,
                                    color: iconColor,
                                    child: Icon(
                                      Icons.location_pin,
                                      color: whiteColor,
                                      size: 50,
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 15.0, top: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('DROP LOCATION - 9655551781',
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
                                          Text(
                                              '77/A2,Spic Nagar,Thoothukudi -628004',
                                              style: TextStyle(
                                                  color: iconColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                )
              : SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live Task',
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Container(
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: iconColor,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 50,
                                          color: iconColor,
                                          child: Icon(
                                            Icons.location_pin,
                                            color: whiteColor,
                                            size: 50,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 15.0,
                                                top: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    'DROP LOCATION - 9655551781',
                                                    style: TextStyle(
                                                        color: iconColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12)),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text('Dilip Watto',
                                                    style: TextStyle(
                                                        color: mainColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20)),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text(
                                                    '77/A2,Spic Nagar,Thoothukudi -628004',
                                                    style: TextStyle(
                                                        color: iconColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: mainColor,
                                          minimumSize: Size(90, 10),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(
                                          Icons.chevron_right,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DeliveryLocation()));
                                        },
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 50.0,
                            ),
                          ])),
                ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, bottom: 20.0),
              child: FloatingActionButton(
                backgroundColor: mainColor,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}
