import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'dart:async';
import 'english.dart';

class GrocartLocalizations {
  final Locale locale;
  GrocartLocalizations(this.locale);

  static GrocartLocalizations? of(BuildContext context) {
    return Localizations.of<GrocartLocalizations>(
        context, GrocartLocalizations);
  }

  static Map<String, Map<String, String>> _GrocartLocalizedValues = {
    'en': english(),
  };

  String? get englishh {
    return _GrocartLocalizedValues[locale.languageCode]!['englishh'];
  }

  String? get shift {
    return _GrocartLocalizedValues[locale.languageCode]!['shift'];
  }

  String? get taskComplete {
    return _GrocartLocalizedValues[locale.languageCode]!['taskComplete'];
  }

  String? get startDuty {
    return _GrocartLocalizedValues[locale.languageCode]!['startDuty'];
  }

  String? get farThisWeek {
    return _GrocartLocalizedValues[locale.languageCode]!['farThisWeek'];
  }

  String? get pickupLocation {
    return _GrocartLocalizedValues[locale.languageCode]!['pickupLocation'];
  }

  String? get shopName {
    return _GrocartLocalizedValues[locale.languageCode]!['shopName'];
  }

  String? get shopAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['shopAddress'];
  }

  String? get dropLocation {
    return _GrocartLocalizedValues[locale.languageCode]!['dropLocation'];
  }

  String? get customerName {
    return _GrocartLocalizedValues[locale.languageCode]!['customerName'];
  }

  String? get deliveryAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['deliveryAddress'];
  }

  String? get earnDetails {
    return _GrocartLocalizedValues[locale.languageCode]!['earnDetails'];
  }

  String? get earnProduct1 {
    return _GrocartLocalizedValues[locale.languageCode]!['earnProduct1'];
  }

  String? get earnProduct2 {
    return _GrocartLocalizedValues[locale.languageCode]!['earnProduct2'];
  }

  String? get earnOrder {
    return _GrocartLocalizedValues[locale.languageCode]!['earnOrder'];
  }

  String? get incentives {
    return _GrocartLocalizedValues[locale.languageCode]!['incentives'];
  }

  String? get distance {
    return _GrocartLocalizedValues[locale.languageCode]!['distance'];
  }

  String? get miles1 {
    return _GrocartLocalizedValues[locale.languageCode]!['miles1'];
  }

  String? get miles2 {
    return _GrocartLocalizedValues[locale.languageCode]!['miles2'];
  }

  String? get totals {
    return _GrocartLocalizedValues[locale.languageCode]!['totals'];
  }

  String? get confirm {
    return _GrocartLocalizedValues[locale.languageCode]!['confirm'];
  }

  String? get live {
    return _GrocartLocalizedValues[locale.languageCode]!['live'];
  }

  String? get help {
    return _GrocartLocalizedValues[locale.languageCode]!['help'];
  }

  String? get reachedPickup {
    return _GrocartLocalizedValues[locale.languageCode]!['reachedPickup'];
  }

  String? get pickupItem1 {
    return _GrocartLocalizedValues[locale.languageCode]!['pickupItem1'];
  }

  String? get camera {
    return _GrocartLocalizedValues[locale.languageCode]!['camera'];
  }

  String? get drone {
    return _GrocartLocalizedValues[locale.languageCode]!['drone'];
  }

  String? get confirmItems {
    return _GrocartLocalizedValues[locale.languageCode]!['confirmItems'];
  }

  String? get address {
    return _GrocartLocalizedValues[locale.languageCode]!['address'];
  }

  String? get moreDetails {
    return _GrocartLocalizedValues[locale.languageCode]!['moreDetails'];
  }

  String? get collectCustomer {
    return _GrocartLocalizedValues[locale.languageCode]!['collectCustomer'];
  }

  String? get reachedDeliveryLocation {
    return _GrocartLocalizedValues[locale.languageCode]![
        'reachedDeliveryLocation'];
  }

  String? get delivery {
    return _GrocartLocalizedValues[locale.languageCode]!['delivery'];
  }

  String? get collectCash {
    return _GrocartLocalizedValues[locale.languageCode]!['collectCash'];
  }

  String? get toBeCollect {
    return _GrocartLocalizedValues[locale.languageCode]!['toBeCollect'];
  }

  String? get collect {
    return _GrocartLocalizedValues[locale.languageCode]!['collect'];
  }

  String? get actualPaid {
    return _GrocartLocalizedValues[locale.languageCode]!['actualPaid'];
  }

  String? get reEnterAmount {
    return _GrocartLocalizedValues[locale.languageCode]!['reEnterAmount'];
  }

  String? get nuericField {
    return _GrocartLocalizedValues[locale.languageCode]!['nuericField'];
  }

  String? get cashCollect {
    return _GrocartLocalizedValues[locale.languageCode]!['cashCollect'];
  }

  String? get paymentSuccess {
    return _GrocartLocalizedValues[locale.languageCode]!['paymentSuccess'];
  }

  String? get landMarkDetails {
    return _GrocartLocalizedValues[locale.languageCode]!['landMarkDetails'];
  }

  String? get landMark {
    return _GrocartLocalizedValues[locale.languageCode]!['landMark'];
  }

  String? get call {
    return _GrocartLocalizedValues[locale.languageCode]!['call'];
  }

  String? get completeDelivery {
    return _GrocartLocalizedValues[locale.languageCode]!['completeDelivery'];
  }

  String? get earnWeeklyDetails {
    return _GrocartLocalizedValues[locale.languageCode]!['earnWeeklyDetails'];
  }

  String? get earnLastWeek {
    return _GrocartLocalizedValues[locale.languageCode]!['earnLastWeek'];
  }

  String? get earnTotal {
    return _GrocartLocalizedValues[locale.languageCode]!['earnTotal'];
  }

  String? get bonuses {
    return _GrocartLocalizedValues[locale.languageCode]!['bonuses'];
  }

  String? get delivered {
    return _GrocartLocalizedValues[locale.languageCode]!['delivered'];
  }

  String? get shop1 {
    return _GrocartLocalizedValues[locale.languageCode]!['shop1'];
  }

  String? get shop2 {
    return _GrocartLocalizedValues[locale.languageCode]!['shop2'];
  }

  String? get shop3 {
    return _GrocartLocalizedValues[locale.languageCode]!['shop3'];
  }

  String? get shop4 {
    return _GrocartLocalizedValues[locale.languageCode]!['shop4'];
  }

  String? get shop5 {
    return _GrocartLocalizedValues[locale.languageCode]!['shop5'];
  }

  String? get weeklyInsentive {
    return _GrocartLocalizedValues[locale.languageCode]!['weeklyInsentive'];
  }

  String? get dailyInsentive {
    return _GrocartLocalizedValues[locale.languageCode]!['dailyInsentive'];
  }

  String? get earnToday {
    return _GrocartLocalizedValues[locale.languageCode]!['earnToday'];
  }

  String? get earnWeekly {
    return _GrocartLocalizedValues[locale.languageCode]!['earnWeekly'];
  }
}

class GrocartLocalizationsDelegate
    extends LocalizationsDelegate<GrocartLocalizations> {
  const GrocartLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'ar',
        'pt',
        'fr',
        'id',
        'es',
        'it',
        'tr',
        'sw'
      ].contains(locale.languageCode);

  @override
  Future<GrocartLocalizations> load(Locale locale) {
    return SynchronousFuture<GrocartLocalizations>(
        GrocartLocalizations(locale));
  }

  @override
  bool shouldReload(GrocartLocalizationsDelegate old) => false;
}
