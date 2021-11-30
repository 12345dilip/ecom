import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Routers/routes.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: cardBackgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: mainTextColor,
            )),
        title: Text(
          GrocartLocalizations.of(context)!.live!,
          style: Theme.of(context).textTheme.headline4!.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.07,
              color: mainColor,
              fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: iconColor)),
              child: Center(
                child: Text(
                  GrocartLocalizations.of(context)!.help!,
                  style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          )
        ],
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
                      Container(
                          height: 110,
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
                                      height: 110,
                                      width: 50,
                                      color: mainColor,
                                      child: Image.asset(
                                          'images/location/LOCATION ICON-1.png')),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 15.0, top: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            GrocartLocalizations.of(context)!
                                                    .pickupLocation! +
                                                ' - ' +
                                                '9500340738',
                                            style: TextStyle(
                                                color: iconColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            GrocartLocalizations.of(context)!
                                                .shopName!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.07,
                                                    color: mainColor,
                                                    fontSize: 17),
                                          ),
                                          SizedBox(
                                            height: 5.0,
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
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, PageRoutes.pickupLocationPage);
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, right: 5),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: new BoxDecoration(
                                        color: mainColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 110,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: iconColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 110,
                                width: 50,
                                color: iconColor,
                                child: Image.asset(
                                    'images/location/LOCATION ICON-2.png')),
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 15.0, top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        GrocartLocalizations.of(context)!
                                                .dropLocation! +
                                            ' - ' +
                                            '9655551781',
                                        style: TextStyle(
                                            color: iconColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
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
                                    SizedBox(
                                      height: 5.0,
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
                            ),
                          ],
                        ),
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}
