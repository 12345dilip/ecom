import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart/Authentication/login_navigator_page.dart';
import 'package:grocart/Chat/UI/chat_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/addMoney_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/addToWallet.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/favourites_list_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/saved_addresses_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/settings_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/support_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/terms_n_conditions_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/ListItems/wallet_page.dart';
import 'package:grocart/LandingOrderAccountPage/AccountPage/UI/account_page.dart';
import 'package:grocart/LandingOrderAccountPage/HomePage/UI/home_page.dart';
import 'package:grocart/LandingOrderAccountPage/HomePage/UI/map_order_placed.dart';
import 'package:grocart/LandingOrderAccountPage/OrderPage/UI/order_page.dart';
import 'package:grocart/LandingOrderAccountPage/OrderPage/UI/rating_now.dart';
import 'package:grocart/LandingOrderAccountPage/landing_order_account_page.dart';
import 'package:grocart/Maps/UI/location_page.dart';
import 'package:grocart/Pages/offers_page.dart';
import 'package:grocart/Pages/order_placed.dart';
import 'package:grocart/Pages/payment_method_page.dart';
import 'package:grocart/Pages/reviews_page.dart';
import 'package:grocart/Pages/verified_buyNow.dart';
import 'package:grocart/Pages/view_cart_page.dart';

class PageRoutes {
  static const String locationSite = 'location_page';
  static const String homeOrderAccountSite = 'home_order_account';
  static const String homeSite = 'home_page';
  static const String accountSite = 'account_page';
  static const String orderSite = 'order_page';
  static const String itemSite = 'itemSite';
  static const String termsAndConditionSite = 'tnc_page';
  static const String savedAddressesSite = 'saved_addresses_page';
  static const String supportSite = 'support_page';
  static const String signInNavigator = 'login_navigator';
  static const String orderMapSite = 'order_map_page';
  static const String chatSite = 'chat_page';
  static const String viewCartPageSite = 'view_cart';
  static const String orderChoosePlaced = 'order_placed';
  static const String paymentType = 'payment_method';
  static const String walletSite = 'wallet_page';
  static const String addingAmount = 'addMoney_page';
  static const String settings = 'settings_page';
  static const String reviewAndRatings = 'reviews';
  static const String rateNowSite = 'rateNow';
  static const String addingWallet = 'addingWallet';
  static const String addFavourite = 'addFavourite';
  static const String addOffers = 'offers';
  static const String buyNow = 'buyNow';

  Map<String, WidgetBuilder> routes() {
    return {
      addOffers: (context) => OffersPage(),
      locationSite: (context) => LocationPage(),
      homeOrderAccountSite: (context) => LandingOrderAccountPage(),
      homeSite: (context) => HomePage(),
      orderSite: (context) => OrderPage(),
      accountSite: (context) => AccountPage(),
      termsAndConditionSite: (context) => TermsAndConditionPage(),
      savedAddressesSite: (context) => SavedAddressesPage(),
      supportSite: (context) => SupportPage(),
      signInNavigator: (context) => LoginNavigatorPage(),
      orderMapSite: (context) => MapOrderPage(),
      chatSite: (context) => ChatPage(),
      viewCartPageSite: (context) => ViewCartPage(),
      paymentType: (context) => PaymentMethodPage(),
      orderChoosePlaced: (context) => OrderPlaced(),
      walletSite: (context) => WalletPage(),
      addingAmount: (context) => AddMoney(),
      settings: (context) => Settings(),
      reviewAndRatings: (context) => ReviewPage(),
      rateNowSite: (context) => RatingNow(),
      addingWallet: (context) => AddToWallet(),
      addFavourite: (context) => Favourite(),
      buyNow: (context) => Bottom(),
    };
  }
}
