import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spicy/Chat/UI/animated_bottom_bar.dart';
import 'package:spicy/LandingOrderAccountPage/AccountPage/UI/account_page.dart';
import 'package:spicy/LandingOrderAccountPage/HomePage/UI/home_page.dart';
import 'package:spicy/LandingOrderAccountPage/OrderPage/UI/order_page.dart';
import 'package:spicy/Locale/locales.dart';

class LandingOrderAccountPage extends StatefulWidget {
  final int number;
  LandingOrderAccountPage([this.number = 0]);
  @override
  _LandingOrderAccountPageState createState() =>
      _LandingOrderAccountPageState();
}

class _LandingOrderAccountPageState extends State<LandingOrderAccountPage> {
  int _currentIndexVariable = 0;

  @override
  void initState() {
    super.initState();
    _currentIndexVariable = widget.number;
  }

  static String bottomHomeIcon = 'images/footermenu/ic_home.png';

  static String bottomOrderIcon = 'images/footermenu/ic_orders.png';

  static String bottomAccountIcon = 'images/footermenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    var appLocalization = SpicyLocalizations.of(context)!;
    final List<BarItem> tabBarItems = [
      BarItem(
        headingText: appLocalization.homeText,
        photo: bottomHomeIcon,
      ),
      BarItem(
        headingText: "Orders",
        photo: bottomOrderIcon,
      ),
      BarItem(
        headingText: "Account",
        photo: bottomAccountIcon,
      ),
    ];

    final List<Widget> _tabBarItemsList = [
      HomePage(),
      OrderPage(),
      AccountPage(),
    ];
    return Scaffold(backgroundColor: Theme.of(context).cardColor,
      body: _tabBarItemsList[_currentIndexVariable],
      bottomNavigationBar: AnimatedBottomBar(
          barItemsList: tabBarItems,
          onBarpress: (index) {
            setState(() {
              _currentIndexVariable = index;
            });
          }),
    );
  }
}
