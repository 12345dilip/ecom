import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Pages/map_order_placed.dart';
import 'package:grocart_delivery/Pages/view_order_site.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class CollectCash extends StatefulWidget {
  const CollectCash({Key? key}) : super(key: key);

  @override
  _CollectCashState createState() => _CollectCashState();
}

class _CollectCashState extends State<CollectCash> {
  bool openSlide = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DELIVERY',
              style: TextStyle(color: whiteColor, fontSize: 18),
            ),
            Text(
              '9500340738',
              style: TextStyle(color: iconColor, fontSize: 18),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: whiteColor)),
              child: Center(
                child: Text(
                  'HELP',
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          )
        ],
        backgroundColor: mainColor,
      ),
      body: openSlide
          ? Align(
              alignment: Alignment.bottomCenter,
              child: ViewOrderSite(),
            )
          : Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Collect cash from customer',
                          style: TextStyle(
                              color: mainColor, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '₹ 150',
                          style: TextStyle(
                              color: mainTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'to be collecct from customer',
                          style: TextStyle(
                              color: iconColor, fontWeight: FontWeight.bold),
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
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Container(
                                  color: Theme.of(context).cardColor,
                                  child: SingleChildScrollView(
                                      child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15.0,
                                        top: 20.0,
                                        bottom: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: Text(
                                                'Collect cash from customer')),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                            'ENTER ACTUAL AMOUNT PAID BY CUSTOMER'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                            //controller: firstNameController,
                                            decoration: InputDecoration(
                                          labelText: "Enter Amount",
                                          enabledBorder: OutlineInputBorder(),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('RE_ENTER AMOUNT'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                            //controller: firstNameController,
                                            decoration: InputDecoration(
                                          labelText: "Re-Enter Amount",
                                          enabledBorder: OutlineInputBorder(),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Enter numeric amount in both fields',
                                          style: TextStyle(color: mainColor),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            width: double.infinity,
                                            child: RaisedButton(
                                              color: mainColor,
                                              onPressed: () {
                                                setState(() {
                                                  openSlide = !openSlide;
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "CASH COLLECTED",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: whiteColor,
                                                        fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                            },
                          );
                        },
                        child: Text(
                          "COLLECT NOW",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: whiteColor, fontSize: 10),
                        ),
                      ),
                    ))
              ],
            ),
    );
  }
}
