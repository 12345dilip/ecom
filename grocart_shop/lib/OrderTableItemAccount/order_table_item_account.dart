import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_shop/Chat/UI/animated_bottom_bar.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/OrderTableItemAccount/Account/UI/account_page.dart';
import 'package:grocart_shop/OrderTableItemAccount/Order/UI/order_page.dart';

import 'package:grocart_shop/Pages/items.dart';

class OrderItemAccount extends StatefulWidget {
  @override
  _OrderItemAccountState createState() => _OrderItemAccountState();
}

class _OrderItemAccountState extends State<OrderItemAccount> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _children = [
    OrderPage(),
    //BookingsPage(),
    ItemsPage(),
    AccountPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static String bottomIconItem = 'images/footermenu/ic_item.png';

  //static String bottomIconTable = 'images/footermenu/ic_table.png';

  static String bottomIconOrder = 'images/footermenu/ic_orders.png';

  static String bottomIconAccount = 'images/footermenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    final List<BarItem> barItems = [
      BarItem(
        text: AppLocalizations.of(context)!.orders,
        image: bottomIconOrder,
      ),
      // BarItem(
      //   text: "Table",
      //   image: bottomIconTable,
      // ),
      BarItem(
        text: AppLocalizations.of(context)!.product,
        image: bottomIconItem,
      ),
      BarItem(
        text: "Account",
        image: bottomIconAccount,
      ),
    ];
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: barItems,
          onBarTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
