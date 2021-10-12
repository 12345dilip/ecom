import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:delivery_app/Locale/italian.dart';
import 'package:delivery_app/Locale/swahili.dart';
import 'package:delivery_app/Locale/turkish.dart';
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': english(),
    'ar': arabic(),
    'pt': portuguese(),
    'fr': french(),
    'id': indonesian(),
    'es': spanish(),
    'it': italian(),
    'tr': turkish(),
    'sw': swahili(),
  };

  String? get chickenSandwich {
    return _localizedValues[locale.languageCode]!['chicken'];
  }

  String? get sandwich {
    return _localizedValues[locale.languageCode]!['sandwich'];
  }

  String? get juicy {
    return _localizedValues[locale.languageCode]!['juice'];
  }

  String? get invalidNumber {
    return _localizedValues[locale.languageCode]!['invalidNumber'];
  }

  String? get networkError {
    return _localizedValues[locale.languageCode]!['networkError'];
  }

  String? get registerTitle {
    return _localizedValues[locale.languageCode]!['registerTitle'];
  }

  String? get invalidName {
    return _localizedValues[locale.languageCode]!['invalidName'];
  }

  String? get invalidEmail {
    return _localizedValues[locale.languageCode]!['invalidEmail'];
  }

  String? get invalidNameAndEmail {
    return _localizedValues[locale.languageCode]!['invalidNameAndEmail'];
  }

  String? get registerFullName {
    return _localizedValues[locale.languageCode]!['registerFullName'];
  }

  String? get registerEmailAddress {
    return _localizedValues[locale.languageCode]!['registerEmailAddress'];
  }

  String? get phone {
    return _localizedValues[locale.languageCode]!['phone'];
  }

  String? get verificationTextType {
    return _localizedValues[locale.languageCode]!['verificationTextType'];
  }

  String? get findVerification {
    return _localizedValues[locale.languageCode]!['findVerification'];
  }

  String? get checkNetwork {
    return _localizedValues[locale.languageCode]!['checkNetwork'];
  }

  String? get invalidOTP {
    return _localizedValues[locale.languageCode]!['invalidOTP'];
  }

  String? get enterrunningVerificationCode {
    return _localizedValues[locale.languageCode]![
        'enterrunningVerificationCode'];
  }

  String? get runningVerificationCode {
    return _localizedValues[locale.languageCode]!['runningVerificationCode'];
  }

  String? get resendOtpVerficationCode {
    return _localizedValues[locale.languageCode]!['resendOtpVerficationCode'];
  }

  String? get offline {
    return _localizedValues[locale.languageCode]!['offline'];
  }

  String? get online {
    return _localizedValues[locale.languageCode]!['online'];
  }

  String? get goOnlineMode {
    return _localizedValues[locale.languageCode]!['goOnlineMode'];
  }

  String? get goOfflineMode {
    return _localizedValues[locale.languageCode]!['goOfflineMode'];
  }

  String? get ordersList {
    return _localizedValues[locale.languageCode]!['ordersList'];
  }

  String? get rideToInsight {
    return _localizedValues[locale.languageCode]!['rideToInsight'];
  }

  String? get licence {
    return _localizedValues[locale.languageCode]!['licence'];
  }

  String? get onion {
    return _localizedValues[locale.languageCode]!['onion'];
  }

  String? get cauliflower {
    return _localizedValues[locale.languageCode]!['cauliflower'];
  }

  String? get tomatoes {
    return _localizedValues[locale.languageCode]!['tomatoes'];
  }

  String? get heyThere {
    return _localizedValues[locale.languageCode]!['heyThere'];
  }

  String? get onMyWay {
    return _localizedValues[locale.languageCode]!['onMyWay'];
  }

  String? get earningDetails {
    return _localizedValues[locale.languageCode]!['earningDetails'];
  }

  String? get location {
    return _localizedValues[locale.languageCode]!['earnings'];
  }

  String? get grant {
    return _localizedValues[locale.languageCode]!['earnings'];
  }

  String? get bodyTextType1 {
    return _localizedValues[locale.languageCode]!['bodyTextType1'];
  }

  String? get bodyTextType2 {
    return _localizedValues[locale.languageCode]!['bodyTextType2'];
  }

  String? get phoneText {
    return _localizedValues[locale.languageCode]!['phoneText'];
  }

  String? get continueTextType {
    return _localizedValues[locale.languageCode]!['continueTextType'];
  }

  String? get home {
    return _localizedValues[locale.languageCode]!['home'];
  }

  String? get orderText {
    return _localizedValues[locale.languageCode]!['orderText'];
  }

  String? get termsAndConditions {
    return _localizedValues[locale.languageCode]!['termsAndConditions'];
  }

  String? get chartInsight {
    return _localizedValues[locale.languageCode]!['chartInsight'];
  }

  String? get headToWallet {
    return _localizedValues[locale.languageCode]!['headToWallet'];
  }

  String? get supportSite {
    return _localizedValues[locale.languageCode]!['supportSite'];
  }

  String? get aboutUs {
    return _localizedValues[locale.languageCode]!['aboutUs'];
  }

  String? get login {
    return _localizedValues[locale.languageCode]!['login'];
  }

  String? get signOut {
    return _localizedValues[locale.languageCode]!['signOut'];
  }

  String? get signingOut {
    return _localizedValues[locale.languageCode]!['signingOut'];
  }

  String? get sure {
    return _localizedValues[locale.languageCode]!['sure'];
  }

  String? get yes {
    return _localizedValues[locale.languageCode]!['yes'];
  }

  String? get not {
    return _localizedValues[locale.languageCode]!['not'];
  }

  String? get goToBanking {
    return _localizedValues[locale.languageCode]!['goToBanking'];
  }

  String? get toBalencedAvailable {
    return _localizedValues[locale.languageCode]!['toBalencedAvailable'];
  }

  String? get accHolder {
    return _localizedValues[locale.languageCode]!['accHolder'];
  }

  String? get nameOfTheBank {
    return _localizedValues[locale.languageCode]!['nameOfTheBank'];
  }

  String? get codeOfTheBranch {
    return _localizedValues[locale.languageCode]!['codeOfTheBranch'];
  }

  String? get accNumber {
    return _localizedValues[locale.languageCode]!['accNumber'];
  }

  String? get transferAmount {
    return _localizedValues[locale.languageCode]!['transferAmount'];
  }

  String? get bankDetails {
    return _localizedValues[locale.languageCode]!['bankDetails'];
  }

  String? get aboutDelivoo {
    return _localizedValues[locale.languageCode]!['aboutDelivoo'];
  }

  String? get ourVision {
    return _localizedValues[locale.languageCode]!['ourVision'];
  }

  String? get policyAndCo {
    return _localizedValues[locale.languageCode]!['policyAndCo'];
  }

  String? get usageOfTerms {
    return _localizedValues[locale.languageCode]!['usageOfTerms'];
  }

  String? get messageList {
    return _localizedValues[locale.languageCode]!['messageList'];
  }

  String? get typeToMessage {
    return _localizedValues[locale.languageCode]!['typeToMessage'];
  }

  String? get writing {
    return _localizedValues[locale.languageCode]!['writing'];
  }

  String? get enterWordings {
    return _localizedValues[locale.languageCode]!['enterWordings'];
  }

  String? get onlineStatus {
    return _localizedValues[locale.languageCode]!['onlineStatus'];
  }

  String? get recentOrder {
    return _localizedValues[locale.languageCode]!['recentOrder'];
  }

  String? get vegetable {
    return _localizedValues[locale.languageCode]!['vegetable'];
  }

  String? get insightToday {
    return _localizedValues[locale.languageCode]!['insightToday'];
  }

  String? get viewAllDetails {
    return _localizedValues[locale.languageCode]!['viewAllDetails'];
  }

  String? get editProfile {
    return _localizedValues[locale.languageCode]!['editProfile'];
  }

  String? get lightTextType {
    return _localizedValues[locale.languageCode]!['lightTextType'];
  }

  String? get lightTheme {
    return _localizedValues[locale.languageCode]!['lightTheme'];
  }

  String? get onSubmit {
    return _localizedValues[locale.languageCode]!['onSubmit'];
  }

  String? get featurePhoto {
    return _localizedValues[locale.languageCode]!['featurePhoto'];
  }

  String? get imageUpload {
    return _localizedValues[locale.languageCode]!['imageUpload'];
  }

  String? get profileDetails {
    return _localizedValues[locale.languageCode]!['profileDetails'];
  }

  String? get gender {
    return _localizedValues[locale.languageCode]!['gender'];
  }

  String? get documents {
    return _localizedValues[locale.languageCode]!['documents'];
  }

  String? get governmentIdentification {
    return _localizedValues[locale.languageCode]!['governmentIdentification'];
  }

  String? get upload {
    return _localizedValues[locale.languageCode]!['upload'];
  }

  String? get updateDetails {
    return _localizedValues[locale.languageCode]!['updateDetails'];
  }

  String? get instruction {
    return _localizedValues[locale.languageCode]!['instruction'];
  }

  String? get cashOnDelivery {
    return _localizedValues[locale.languageCode]!['cashOnDelivery'];
  }

  String? get thenBackToHome {
    return _localizedValues[locale.languageCode]!['thenBackToHome'];
  }

  String? get earnDisplay {
    return _localizedValues[locale.languageCode]!['earnDisplay'];
  }

  String? get earnItems {
    return _localizedValues[locale.languageCode]!['earnItems'];
  }

  String? get drivingYou {
    return _localizedValues[locale.languageCode]!['drivingYou'];
  }

  String? get viewOrderDetails {
    return _localizedValues[locale.languageCode]!['viewOrderDetails'];
  }

  String? get deliveredProduct {
    return _localizedValues[locale.languageCode]!['deliveredProduct'];
  }

  String? get thankYouVisitAgain {
    return _localizedValues[locale.languageCode]!['thankYouVisitAgain'];
  }

  String? get upComingDeliveryTask {
    return _localizedValues[locale.languageCode]!['upComingDeliveryTask'];
  }

  String? get orderDetails {
    return _localizedValues[locale.languageCode]!['orderDetails'];
  }

  String? get closing {
    return _localizedValues[locale.languageCode]!['closing'];
  }

  String? get mapDirection {
    return _localizedValues[locale.languageCode]!['mapDirection'];
  }

  String? get shopName {
    return _localizedValues[locale.languageCode]!['shopName'];
  }

  String? get onPickedMark {
    return _localizedValues[locale.languageCode]!['onPickedMark'];
  }

  String? get clickMentionedDelivered {
    return _localizedValues[locale.languageCode]!['clickMentionedDelivered'];
  }

  String? get accepted {
    return _localizedValues[locale.languageCode]!['accepted'];
  }

  String? get screenPlay {
    return _localizedValues[locale.languageCode]!['screenPlay'];
  }

  String? get darkTheme {
    return _localizedValues[locale.languageCode]!['darkTheme'];
  }

  String? get darkTextType {
    return _localizedValues[locale.languageCode]!['darkTextType'];
  }

  String? get selectLanguage {
    return _localizedValues[locale.languageCode]!['language'];
  }

  String? get hey {
    return _localizedValues[locale.languageCode]!['hey'];
  }

  String? get settingInfo {
    return _localizedValues[locale.languageCode]!['settingInfo'];
  }

  String? get or {
    return _localizedValues[locale.languageCode]!['or'];
  }

  String? get continueWith {
    return _localizedValues[locale.languageCode]!['continueWith'];
  }

  String? get facebook {
    return _localizedValues[locale.languageCode]!['facebook'];
  }

  String? get google {
    return _localizedValues[locale.languageCode]!['google'];
  }

  String? get apple {
    return _localizedValues[locale.languageCode]!['apple'];
  }

  String? get englishh {
    return _localizedValues[locale.languageCode]!['englishh'];
  }

  String? get arabicc {
    return _localizedValues[locale.languageCode]!['arabicc'];
  }

  String? get frenchh {
    return _localizedValues[locale.languageCode]!['frenchh'];
  }

  String? get indonesiann {
    return _localizedValues[locale.languageCode]!['indonesiann'];
  }

  String? get portuguesee {
    return _localizedValues[locale.languageCode]!['portuguesee'];
  }

  String? get spanishh {
    return _localizedValues[locale.languageCode]!['spanishh'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

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
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
