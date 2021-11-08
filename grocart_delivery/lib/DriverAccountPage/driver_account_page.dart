import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_delivery/Chat/animated_bottom_bar.dart';
import 'package:grocart_delivery/DriverAccountPage/home_page.dart';
import 'package:grocart_delivery/DriverAccountPage/order_page.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/profile_page.dart';

class DriverAccountPage extends StatefulWidget {
  final int number;
  DriverAccountPage([this.number = 0]);
  @override
  _DriverAccountPageState createState() => _DriverAccountPageState();
}

class _DriverAccountPageState extends State<DriverAccountPage> {
  int _currentIndexVariable = 0;

  @override
  void initState() {
    super.initState();
    _currentIndexVariable = widget.number;
  }

  static String bottomHomeIcon = 'images/bottomIcon/ic_home.png';

  static String bottomOrderIcon = 'images/bottomIcon/ic_orders.png';

  static String bottomAccountIcon = 'images/bottomIcon/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    final List<BarItem> tabBarItems = [
      BarItem(
        head: "Home",
        photo: bottomHomeIcon,
      ),
      BarItem(
        head: "Orders",
        photo: bottomOrderIcon,
      ),
      BarItem(
        head: "Account",
        photo: bottomAccountIcon,
      ),
    ];

    final List<Widget> _tabBarItemsList = [
      HomePage(),
      OrderPage(),
      ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
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
