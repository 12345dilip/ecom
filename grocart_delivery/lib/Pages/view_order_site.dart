import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/DriverAccountPage/driver_account_page.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class ViewOrderSite extends StatefulWidget {
  @override
  _ViewOrderSiteState createState() => _ViewOrderSiteState();
}

class _ViewOrderSiteState extends State<ViewOrderSite> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'Delivery Boy',
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 2,
                        child: Checkbox(
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            tristate: false,
                            value: true,
                            splashRadius: 30,
                            onChanged: (value) {}),
                      ),
                      Text(
                        GrocartLocalizations.of(context)!.paymentSuccess!,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: iconColor),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: whiteColor,
                            )),
                        decoration: BoxDecoration(
                          color: mainColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: iconColor,
                        size: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GrocartLocalizations.of(context)!.dropLocation!,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(GrocartLocalizations.of(context)!.customerName!,
                              style: TextStyle(color: iconColor)),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.directions,
                              color: whiteColor,
                            )),
                        decoration: BoxDecoration(
                          color: mainColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          GrocartLocalizations.of(context)!.address!,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text('77/A2', style: TextStyle(color: iconColor)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          GrocartLocalizations.of(context)!.moreDetails!,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(GrocartLocalizations.of(context)!.deliveryAddress!,
                            style: TextStyle(color: iconColor)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          GrocartLocalizations.of(context)!.landMark!,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(GrocartLocalizations.of(context)!.landMarkDetails!,
                            style: TextStyle(color: iconColor)),
                        SizedBox(
                          height: 40.0,
                        ),
                        GestureDetector(
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blue,
                              ),
                              Text(GrocartLocalizations.of(context)!.call!,
                                  style: TextStyle(color: Colors.blue))
                            ],
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
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
                            builder: (context) => DriverAccountPage()));
                  },
                  child: Text(
                    GrocartLocalizations.of(context)!.completeDelivery!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
