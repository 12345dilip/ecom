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

  String? get walletSite {
    return _GrocartLocalizedValues[locale.languageCode]!['walletSite'];
  }

  String? get availableBalance {
    return _GrocartLocalizedValues[locale.languageCode]!['availableBalance'];
  }

  String? get addingAmount {
    return _GrocartLocalizedValues[locale.languageCode]!['addingAmount'];
  }

  String? get recent {
    return _GrocartLocalizedValues[locale.languageCode]!['recent'];
  }

  String? get ironBox {
    return _GrocartLocalizedValues[locale.languageCode]!['ironBox'];
  }

  String? get speaker {
    return _GrocartLocalizedValues[locale.languageCode]!['speaker'];
  }

  String? get droneCam {
    return _GrocartLocalizedValues[locale.languageCode]!['droneCam'];
  }

  String? get ac {
    return _GrocartLocalizedValues[locale.languageCode]!['ac'];
  }

  String? get penDrive {
    return _GrocartLocalizedValues[locale.languageCode]!['penDrive'];
  }

  String? get lens {
    return _GrocartLocalizedValues[locale.languageCode]!['lens'];
  }

  String? get playStation {
    return _GrocartLocalizedValues[locale.languageCode]!['playStation'];
  }

  String? get darkMode {
    return _GrocartLocalizedValues[locale.languageCode]!['darkMode'];
  }

  String? get darkText {
    return _GrocartLocalizedValues[locale.languageCode]!['darkText'];
  }

  String? get lightMode {
    return _GrocartLocalizedValues[locale.languageCode]!['lightMode'];
  }

  String? get lightText {
    return _GrocartLocalizedValues[locale.languageCode]!['lightText'];
  }

  String? get settings {
    return _GrocartLocalizedValues[locale.languageCode]!['settings'];
  }

  String? get display {
    return _GrocartLocalizedValues[locale.languageCode]!['display'];
  }

  String? get selectLanguage {
    return _GrocartLocalizedValues[locale.languageCode]!['selectLanguage'];
  }

  String? get submit {
    return _GrocartLocalizedValues[locale.languageCode]!['submit'];
  }

  String? get verification {
    return _GrocartLocalizedValues[locale.languageCode]!['verification'];
  }

  String? get enterVerification {
    return _GrocartLocalizedValues[locale.languageCode]!['enterVerification'];
  }

  String? get verificationCode {
    return _GrocartLocalizedValues[locale.languageCode]!['verificationCode'];
  }

  String? get resend {
    return _GrocartLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get continueText {
    return _GrocartLocalizedValues[locale.languageCode]!['continueText'];
  }

  String? get hey {
    return _GrocartLocalizedValues[locale.languageCode]!['hey'];
  }

  String? get youreAlmostin {
    return _GrocartLocalizedValues[locale.languageCode]!['youreAlmostin'];
  }

  String? get verificationText {
    return _GrocartLocalizedValues[locale.languageCode]!['verificationText'];
  }

  String? get register {
    return _GrocartLocalizedValues[locale.languageCode]!['register'];
  }

  String? get fullName {
    return _GrocartLocalizedValues[locale.languageCode]!['fullName'];
  }

  String? get emailAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['emailAddress'];
  }

  String? get mobileNumber {
    return _GrocartLocalizedValues[locale.languageCode]!['mobileNumber'];
  }

  String? get login {
    return _GrocartLocalizedValues[locale.languageCode]!['login'];
  }

  String? get or {
    return _GrocartLocalizedValues[locale.languageCode]!['or'];
  }

  String? get tnc {
    return _GrocartLocalizedValues[locale.languageCode]!['tnc'];
  }

  String? get termsOfUse {
    return _GrocartLocalizedValues[locale.languageCode]!['termsOfUse'];
  }

  String? get companyPolicy {
    return _GrocartLocalizedValues[locale.languageCode]!['companyPolicy'];
  }

  String? get orWrite {
    return _GrocartLocalizedValues[locale.languageCode]!['orWrite'];
  }

  String? get yourWords {
    return _GrocartLocalizedValues[locale.languageCode]!['yourWords'];
  }

  String? get message {
    return _GrocartLocalizedValues[locale.languageCode]!['message'];
  }

  String? get enterMessage {
    return _GrocartLocalizedValues[locale.languageCode]!['enterMessage'];
  }

  String? get support {
    return _GrocartLocalizedValues[locale.languageCode]!['support'];
  }

  String? get enterAmountToAdd {
    return _GrocartLocalizedValues[locale.languageCode]!['enterAmountToAdd'];
  }

  String? get addVia {
    return _GrocartLocalizedValues[locale.languageCode]!['addVia'];
  }

  String? get credit {
    return _GrocartLocalizedValues[locale.languageCode]!['credit'];
  }

  String? get debit {
    return _GrocartLocalizedValues[locale.languageCode]!['debit'];
  }

  String? get paypal {
    return _GrocartLocalizedValues[locale.languageCode]!['paypal'];
  }

  String? get payU {
    return _GrocartLocalizedValues[locale.languageCode]!['payU'];
  }

  String? get stripe {
    return _GrocartLocalizedValues[locale.languageCode]!['stripe'];
  }

  String? get bankInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['bankInfo'];
  }

  String? get accountHolderName {
    return _GrocartLocalizedValues[locale.languageCode]!['accountHolderName'];
  }

  String? get bankName {
    return _GrocartLocalizedValues[locale.languageCode]!['bankName'];
  }

  String? get branchCode {
    return _GrocartLocalizedValues[locale.languageCode]!['branchCode'];
  }

  String? get accountNumber {
    return _GrocartLocalizedValues[locale.languageCode]!['accountNumber'];
  }

  String? get enterAmountToTransfer {
    return _GrocartLocalizedValues[locale.languageCode]![
        'enterAmountToTransfer'];
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
