import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
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
              GrocartLocalizations.of(context)!.delivery!,
              style: TextStyle(color: mainColor, fontSize: 15),
            ),
            Text(
              '9500340738',
              style: TextStyle(color: iconColor, fontSize: 15),
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
                  border: Border.all(width: 1, color: iconColor)),
              child: Center(
                child: Text(
                  GrocartLocalizations.of(context)!.help!,
                  style: TextStyle(color: mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          )
        ],
        backgroundColor: whiteColor,
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
                          GrocartLocalizations.of(context)!.collectCash!,
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
                          GrocartLocalizations.of(context)!.toBeCollect!,
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
                                          GrocartLocalizations.of(context)!
                                              .collectCash!,
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          GrocartLocalizations.of(context)!
                                              .actualPaid!,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Enter Amount",
                                          enabledBorder: OutlineInputBorder(),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          GrocartLocalizations.of(context)!
                                              .reEnterAmount!,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Re-Enter Amount",
                                          enabledBorder: OutlineInputBorder(),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          GrocartLocalizations.of(context)!
                                              .nuericField!,
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
                                                GrocartLocalizations.of(
                                                        context)!
                                                    .cashCollect!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: whiteColor,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                          GrocartLocalizations.of(context)!.collect!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: whiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            ),
    );
  }
}
