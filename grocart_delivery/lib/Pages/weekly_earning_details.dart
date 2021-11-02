import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class WeeklyEarningDetails extends StatefulWidget {
  const WeeklyEarningDetails({Key? key}) : super(key: key);

  @override
  _WeeklyEarningDetailsState createState() => _WeeklyEarningDetailsState();
}

class _WeeklyEarningDetailsState extends State<WeeklyEarningDetails> {
  bool openTab = false;
  bool tabTotalEarn = false;
  bool tabOrderEarn = false;
  bool tabBonuses = false;
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WEEKLY EARNING DETAILS',
                style: TextStyle(
                    color: mainTextColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Last week earning',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabTotalEarn = !tabTotalEarn;
                          tabOrderEarn = false;
                          tabBonuses = false;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: tabTotalEarn
                                ? Colors.grey.shade500
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '₹ 9998',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text('Total Earnings')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabOrderEarn = !tabOrderEarn;
                          tabTotalEarn = false;
                          tabBonuses = false;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: tabOrderEarn
                                ? Colors.grey.shade500
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '₹ 6358',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text('Order Earnings')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabBonuses = !tabBonuses;
                          tabTotalEarn = false;
                          tabOrderEarn = false;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: tabBonuses
                                ? Colors.grey.shade500
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '₹ 0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text('Bonuses')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      openTab = !openTab;
                    });
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                        color: openTab ? Colors.grey.shade300 : whiteColor,
                        elevation: 1,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              Text(
                                'Sun',
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '25 Apr',
                                style: TextStyle(
                                    color: iconColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                '₹ 9998',
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                openTab
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: mainColor,
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                openTab
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TabView(),
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 80,
                              child: Card(
                                  elevation: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sat',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '24 Apr',
                                          style: TextStyle(
                                              color: iconColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹ 1689',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 80,
                              child: Card(
                                  elevation: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Fri',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '23 Apr',
                                          style: TextStyle(
                                              color: iconColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹ 1580',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 80,
                              child: Card(
                                  elevation: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Wed',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '21 Apr',
                                          style: TextStyle(
                                              color: iconColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹ 1480',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 80,
                              child: Card(
                                  elevation: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Tue',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '20 Apr',
                                          style: TextStyle(
                                              color: iconColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹ 1458',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 80,
                              child: Card(
                                  elevation: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Mon',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '19 Apr',
                                          style: TextStyle(
                                              color: iconColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹ 1280',
                                          style: TextStyle(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: mainColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ));
  }
}

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "McDONALD's",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 60.5',
                        style: TextStyle(
                            color: mainTextColor, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: mainTextColor,
                      )
                    ],
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "French Cafe",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 50.5',
                        style: TextStyle(
                            color: mainTextColor, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: mainTextColor,
                      )
                    ],
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sky Food Center",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 80.5',
                        style: TextStyle(
                            color: mainTextColor, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: mainTextColor,
                      )
                    ],
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Knight",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 40.5',
                        style: TextStyle(
                            color: mainTextColor, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: mainTextColor,
                      )
                    ],
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Knight",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 45.5',
                        style: TextStyle(
                            color: mainTextColor, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: mainTextColor,
                      )
                    ],
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weekly Insentive",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                '₹ 800',
                style: TextStyle(
                    color: mainTextColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Insentive",
                    style: TextStyle(
                        color: mainTextColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9:30 PM',
                    style: TextStyle(
                        color: iconColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                '₹ 400',
                style: TextStyle(
                    color: mainTextColor, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
