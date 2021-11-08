import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_delivery/Authentication/login_navigator.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/add_money.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/add_to_wallet.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/settings.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/support.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/t_and_c.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/wallet.dart';
import 'package:grocart_delivery/DriverAccountPage/driver_account_page.dart';
import 'package:grocart_delivery/Map/map_utils.dart';
import 'package:grocart_delivery/Map/pickup_location.dart';
import 'package:grocart_delivery/Pages/delivery_location.dart';
import 'package:grocart_delivery/Pages/live_task_page.dart';
import 'package:grocart_delivery/Pages/reached_pickup_location.dart';
import 'package:grocart_delivery/Pages/weekly_earning_details.dart';

class PageRoutes {
  static const String mapUtils = 'map_utils';
  static const String earnWeeklyDetails = 'earn_weekly_details';
  static const String liveTaskPage = 'live_task_page';
  static const String pickupLocationPage = 'pickup_location_page';
  static const String deliveryLocationPage = 'delivery_location_page';
  static const String reachedPickup = 'reached_pickup';
  static const String homeOrderAccountSite = 'home_order_account';
  static const String wallet = 'wallet';
  static const String tAndC = 'tnc_page';
  static const String support = 'support';
  static const String signInNavigator = 'login_navigator';
  static const String addingWallet = 'add_to_wallet';
  static const String addingAmount = 'add_money';
  static const String settings = 'settings';

  Map<String, WidgetBuilder> routes() {
    return {
      mapUtils: (context) => MapUtils(),
      earnWeeklyDetails: (context) => WeeklyEarningDetails(),
      homeOrderAccountSite: (context) => DriverAccountPage(),
      liveTaskPage: (context) => LiveTaskPage(),
      pickupLocationPage: (context) => PickupLocationPage(),
      deliveryLocationPage: (context) => DeliveryLocation(),
      reachedPickup: (context) => ReachedPickup(),
      wallet: (context) => WalletPage(),
      signInNavigator: (context) => LoginNavigatorPage(),
      tAndC: (context) => TermsAndConditionPage(),
      support: (context) => SupportPage(),
      addingWallet: (context) => AddToWallet(),
      addingAmount: (context) => AddMoney(),
      settings: (context) => Settings(),
    };
  }
}
