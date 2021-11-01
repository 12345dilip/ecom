import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class WeeklyEarningDetails extends StatefulWidget {
  const WeeklyEarningDetails({Key? key}) : super(key: key);

  @override
  _WeeklyEarningDetailsState createState() => _WeeklyEarningDetailsState();
}

class _WeeklyEarningDetailsState extends State<WeeklyEarningDetails> {
  bool openTab = false;
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
                style: TextStyle(color: mainTextColor),
              ),
              Text(
                'Last week earning',
                style: TextStyle(color: mainColor),
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
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: iconColor,
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
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: iconColor,
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
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: iconColor,
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
                                Icons.keyboard_arrow_down,
                                color: mainColor,
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                openTab
                    ? TabView()
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item Type"),
                  Text('9:30 Pm'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [Text('₹ 60.5'), Icon(Icons.chevron_right)],
                  ),
                  Text('Delivered')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
