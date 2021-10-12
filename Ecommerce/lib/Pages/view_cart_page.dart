import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Components/bottom_bar.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';

List<DropdownMenuItem<String>> dropDownList = [];

void loadData() {
  dropDownList = [];
  dropDownList.add(DropdownMenuItem(
    child: Text('1 kg'),
    value: 'A',
  ));
  dropDownList.add(DropdownMenuItem(
    child: Text('500 g'),
    value: 'B',
  ));
  dropDownList.add(DropdownMenuItem(
    child: Text('250 g'),
    value: 'C',
  ));
}

class ViewCartPage extends StatefulWidget {
  @override
  _ViewCartPageState createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  int _productCount = 1;
  int _productCount1 = 1;
  int _productCount2 = 1;

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
            color: mainTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(SpicyLocalizations.of(context)!.confirm!,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Theme.of(context).cardColor,
                  child: Text(
                      SpicyLocalizations.of(context)!.ironBox!.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Color(0xff616161),
                          letterSpacing: 0.67,
                          fontWeight: FontWeight.bold)),
                ),
                cartOrderItemListTile(
                    'images/trone20.jpg',
                    context,
                    SpicyLocalizations.of(context)!.droneCam!,
                    '5.00',
                    _productCount,
                    () => setState(() => _productCount--),
                    () => setState(() => _productCount++)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 65.0,
                      ),
                      Text(
                        SpicyLocalizations.of(context)!.lens!,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 13.3),
                      ),
                      Spacer(),
                      Text(
                        '\$ 3.00',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 13.3),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                cartOrderItemListTile(
                    'images/laptop.jpg',
                    context,
                    SpicyLocalizations.of(context)!.laptop!,
                    '7.50',
                    _productCount1,
                    () => setState(() => _productCount1--),
                    () => setState(() => _productCount1++)),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                cartOrderItemListTile(
                    'images/iron.jpg',
                    context,
                    SpicyLocalizations.of(context)!.ironBox!,
                    '4.50',
                    _productCount2,
                    () => setState(() => _productCount2--),
                    () => setState(() => _productCount2++)),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 6.7,
                ),
                Container(
                  height: 53.3,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/ic_promocode.png',
                        height: 16.0,
                        width: 16.7,
                      ),
                      SizedBox(
                        width: 17.3,
                      ),
                      Text(SpicyLocalizations.of(context)!.instruction!,
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              fontSize: 11.7, color: Color(0xffb2b2b2))),
                      Spacer(),
                      Text(SpicyLocalizations.of(context)!.apply!,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: mainColor))
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 6.7,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  child: Text(
                      SpicyLocalizations.of(context)!
                          .paymentInfo!
                          .toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: disabledColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.67,
                          )),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          SpicyLocalizations.of(context)!.sub!,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          '\$ 19.50',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ]),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          SpicyLocalizations.of(context)!.service!,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          '\$ 1.50',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ]),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          SpicyLocalizations.of(context)!.amount!,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$ 21.00',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 132.0,
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xffc4c8c1),
                                size: 13.3,
                              ),
                              SizedBox(
                                width: 11.0,
                              ),
                              Text(SpicyLocalizations.of(context)!.deliver!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: disabledColor,
                                          fontWeight: FontWeight.bold)),
                              Text(SpicyLocalizations.of(context)!.homeText!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: mainColor,
                                          fontWeight: FontWeight.bold)),
                              Spacer(),
                            ],
                          ),
                          SizedBox(
                            height: 13.0,
                          ),
                          Text(
                              '1024, Central Residency Hemilton Park, New York, USA',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7, color: Color(0xffb7b7b7)))
                        ],
                      ),
                    ),
                  ),
                  BottomBar(
                    typeOftext:
                        SpicyLocalizations.of(context)!.pay! + " \$ 21.00",
                    onClick: () =>
                        Navigator.pushNamed(context, PageRoutes.paymentType),
                  ),
                ],
              ),
            ),
          ],
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Column cartOrderItemListTile(
    String photo,
    BuildContext context,
    String heading,
    String amount,
    int productCount,
    Function subOnPressed,
    Function addOnPressed,
  ) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    photo,
                    scale: 40.5,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 10,
                    child: Text(
                      heading,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(
                      // flex: 2,
                      ),
                  Container(
                    height: 33.0,
                    //width: 76.7,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainColor),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (productCount > 0)
                              ? subOnPressed as void Function()?
                              : null,
                          child: Icon(
                            Icons.remove,
                            color: mainColor,
                            size: 20.0,
                            //size: 23.3,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(productCount.toString(),
                            style: Theme.of(context).textTheme.caption),
                        SizedBox(width: 8.0),
                        InkWell(
                          onTap: addOnPressed as void Function()?,
                          child: Icon(
                            Icons.add,
                            color: mainColor,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 44,
                    child: Center(
                      child: Text(
                        '\$ $amount',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
