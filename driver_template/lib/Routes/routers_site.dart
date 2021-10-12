import 'package:delivery_app/AccountPage/UI/ListItems/support_site.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivery_app/AccountPage/UI/ListItems/add_to_banking_site.dart';
import 'package:delivery_app/AccountPage/UI/ListItems/chart_insight_site.dart';
import 'package:delivery_app/AccountPage/UI/ListItems/settings_site.dart';
import 'package:delivery_app/AccountPage/UI/ListItems/terms_and_conditions.dart';
import 'package:delivery_app/AccountPage/UI/ListItems/wallet_site.dart';
import 'package:delivery_app/AccountPage/UI/account_site.dart';
import 'package:delivery_app/AuthenticationPage/signin_navigator_site.dart';
import 'package:delivery_app/ChatDetailsPage/UI/chat_restaurant_site.dart';
import 'package:delivery_app/ChatDetailsPage/UI/chat_user_site.dart';
import 'package:delivery_app/DeliveryPartnerSite/driver_profile.dart';
import 'package:delivery_app/OrderMapSite/UI/delivery_success_site.dart';
import 'package:delivery_app/OrderMapSite/UI/upcoming_delivery_site.dart';

class RouterSite {
  static const String accountSite = 'account_site';
  static const String termsAndConditions = 'terms_and_conditions';
  static const String supportSite = 'support_site';
  static const String loginNavigator = 'login_navigator';
  static const String chatRestaurantSite = 'chat_restaurant';
  static const String chatPageUser = 'chat_user';
  static const String deliverySuccessful = 'delivery_successful';
  static const String chartInsightPage = 'chart_insight_page';
  static const String walletSite = 'wallet_site';
  static const String addToBank = 'addtobank_page';
  static const String editProfileSite = 'store_profile_site';
  static const String newDeliverySite = 'new_delivery_site';
  static const String settingSite = 'settings_site';

  Map<String, WidgetBuilder> routes() {
    return {
      accountSite: (context) => AccountPageSite(),
      termsAndConditions: (context) => TermsAndConditionSite(),
      supportSite: (context) => SupportSite(),
      loginNavigator: (context) => SigninNavigationSite(),
      chatRestaurantSite: (context) => ChatRestaurantSite(),
      chatPageUser: (context) => ChatUserSite(),
      deliverySuccessful: (context) => DeliverySuccessSite(),
      chartInsightPage: (context) => ChartInsightSite(),
      walletSite: (context) => WalletSite(),
      addToBank: (context) => AddToBanking(),
      editProfileSite: (context) => DriverProfile(),
      newDeliverySite: (context) => UpcomingDeliverySite(),
      settingSite: (context) => SettingSite(),
    };
  }
}
