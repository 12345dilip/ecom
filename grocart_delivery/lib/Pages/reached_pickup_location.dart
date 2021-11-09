import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Pages/live_task_page.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class ReachedPickup extends StatefulWidget {
  const ReachedPickup({Key? key}) : super(key: key);

  @override
  _ReachedPickupState createState() => _ReachedPickupState();
}

class _ReachedPickupState extends State<ReachedPickup> {
  List picDone = ['pickup complete'];
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
              GrocartLocalizations.of(context)!.pickupLocation!,
              style: TextStyle(
                  color: mainTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '9500340738',
              style: TextStyle(
                  color: iconColor, fontSize: 15, fontWeight: FontWeight.bold),
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
                  style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          )
        ],
        backgroundColor: whiteColor,
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
                  Text(
                    GrocartLocalizations.of(context)!.pickupItem1!,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.07,
                        color: mainColor,
                        fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: Row(
                      children: [
                        ButtonTheme(
                          height: 30,
                          minWidth: 30,
                          child: RaisedButton(
                            color: mainTextColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            onPressed: () {},
                            child: Text(
                              '1x',
                              style: TextStyle(color: whiteColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          GrocartLocalizations.of(context)!.camera!,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.07,
                                  fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0, bottom: 15.0),
                    child: Text(
                      '-' + GrocartLocalizations.of(context)!.drone!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: iconColor,
                          fontSize: 15),
                    ),
                  ),
                  Divider(),
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
                      setState(() {
                        itemCount = true;
                      });
                      Navigator.pushNamed(context, PageRoutes.dropLocation);
                    },
                    child: Text(
                      GrocartLocalizations.of(context)!.confirmItems!,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ))
        ],
      ),
    );
  }
}
