import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class CollectCash extends StatefulWidget {
  const CollectCash({Key? key}) : super(key: key);

  @override
  _CollectCashState createState() => _CollectCashState();
}

class _CollectCashState extends State<CollectCash> {
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
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
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
                        color: mainTextColor, fontWeight: FontWeight.bold),
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
                    onPressed: () {},
                    child: Text(
                      'COLLECT NOW',
                      style: TextStyle(color: whiteColor),
                    )),
              ))
        ],
      ),
    );
  }
}
