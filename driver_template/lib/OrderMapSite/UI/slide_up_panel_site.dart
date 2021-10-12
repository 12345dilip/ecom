import 'package:flutter/material.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class OrderDetailsContainer extends StatefulWidget {
  final List<String?> itemNameList;

  OrderDetailsContainer(this.itemNameList);

  @override
  _OrderDetailsContainerState createState() => _OrderDetailsContainerState();
}

class _OrderDetailsContainerState extends State<OrderDetailsContainer> {
  List<double> priceList = [
    3.00,
    4.50,
    2.50,
  ];

  double sum() {
    double totals = 0.00;
    for (int i = 0; i < priceList.length; i++) {
      totals += priceList[i];
    }
    return totals;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      height: MediaQuery.of(context).size.width - 140,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: widget.itemNameList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: ListTile(
                    title: Text(
                      widget.itemNameList[index]!,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    trailing: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Text(
                            '\$ ${priceList[index]}0',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50.0,
            color: mainColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!.cashOnDelivery!,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: whiteColor),
                  ),
                  Text(
                    '\$ 11.50',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
