import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/Routes/routes.dart';
import 'package:grocart_shop/Themes/colors.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context)!.newOrder),
      Tab(text: AppLocalizations.of(context)!.pastOrder),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.orderText!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                labelColor: kMainColor,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: kMainColor,
                unselectedLabelColor: kLightTextColor,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return ListView(
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, PageRoutes.orderInfoPage),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Samantha Smith',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 13.3,
                                            letterSpacing: 0.07),
                                  ),
                                  Spacer(),
                                  Text(AppLocalizations.of(context)!.pending!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              color: Color(0xffffa025),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.7,
                                              letterSpacing: 0.06)),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Order AE5587 | 22 June, 11:35 am',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$ 21.00 | COD',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Cameras',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                          Text(
                            '(Flash)',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Camera Lens',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Viewfinder',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 8.0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, PageRoutes.orderInfoPage),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Samantha Smith',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 13.3,
                                            letterSpacing: 0.07),
                                  ),
                                  Spacer(),
                                  Text(AppLocalizations.of(context)!.pending!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              color: Color(0xffffa025),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.7,
                                              letterSpacing: 0.06)),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Order DG2414 | 22 June, 11:20 am',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$ 11.50 | Wallet',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Cameras',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                          Text(
                            '(Flash)',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Camera Lens',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Viewfinder',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 8.0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, PageRoutes.orderInfoPage),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Samantha Smith',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 13.3,
                                            letterSpacing: 0.07),
                                  ),
                                  Spacer(),
                                  Text(AppLocalizations.of(context)!.accepted!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              color: Color(0xff7ac81e),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.7,
                                              letterSpacing: 0.06)),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Order BD1255 | 22 June, 11:20 am',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$ 11.50 | COD',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Cameras',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                          Text(
                            '(Flash)',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Camera Lens',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Viewfinder',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 8.0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, PageRoutes.orderInfoPage),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Samantha Smith',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 13.3,
                                            letterSpacing: 0.07),
                                  ),
                                  Spacer(),
                                  Text(AppLocalizations.of(context)!.accepted!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              color: Color(0xff7ac81e),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.7,
                                              letterSpacing: 0.06)),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Order BD1255 | 22 June, 11:20 am',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$ 11.50 | COD',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontSize: 11.7,
                                            letterSpacing: 0.06,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Cameras',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                          Text(
                            '(Flash)',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Camera Lens',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text('Viewfinder',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.06,
                                      color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Divider(
                      color: Theme.of(context).cardColor,
                      thickness: 8.0,
                    ),
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
