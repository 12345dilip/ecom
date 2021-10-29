import 'package:flutter/material.dart';
import 'package:grocart_delivery/Pages/collect_cash.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class DeliveryLocation extends StatefulWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  _DeliveryLocationState createState() => _DeliveryLocationState();
}

class _DeliveryLocationState extends State<DeliveryLocation> {
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [],
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
                              builder: (context) => CollectCash()));
                    },
                    child: Text(
                      'REACHEDDELIVERY LOCATION',
                      style: TextStyle(color: whiteColor),
                    )),
              ))
        ],
      ),
    );
  }
}
