import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:grocart/Locale/italian.dart';
import 'package:grocart/Locale/swahili.dart';
import 'package:grocart/Locale/turkish.dart';
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

class GrocartLocalizations {
  final Locale locale;
  GrocartLocalizations(this.locale);

  static GrocartLocalizations? of(BuildContext context) {
    return Localizations.of<GrocartLocalizations>(context, GrocartLocalizations);
  }

  static Map<String, Map<String, String>> _GrocartLocalizedValues = {
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

  String? get youreAlmostin {
    return _GrocartLocalizedValues[locale.languageCode]!['youreAlmostin'];
  }

  String? get customText {
    return _GrocartLocalizedValues[locale.languageCode]!['customText'];
  }

  String? get invalidNumber {
    return _GrocartLocalizedValues[locale.languageCode]!['invalidNumber'];
  }

  String? get networkError {
    return _GrocartLocalizedValues[locale.languageCode]!['networkError'];
  }

  String? get register {
    return _GrocartLocalizedValues[locale.languageCode]!['register'];
  }

  String? get invalidName {
    return _GrocartLocalizedValues[locale.languageCode]!['invalidName'];
  }

  String? get invalidEmail {
    return _GrocartLocalizedValues[locale.languageCode]!['invalidEmail'];
  }

  String? get invalidNameAndEmail {
    return _GrocartLocalizedValues[locale.languageCode]!['invalidNameAndEmail'];
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

  String? get verificationText {
    return _GrocartLocalizedValues[locale.languageCode]!['verificationText'];
  }

  String? get verification {
    return _GrocartLocalizedValues[locale.languageCode]!['verification'];
  }

  String? get checkNetwork {
    return _GrocartLocalizedValues[locale.languageCode]!['checkNetwork'];
  }

  String? get invalidOTP {
    return _GrocartLocalizedValues[locale.languageCode]!['invalidOTP'];
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

  String? get offlineText {
    return _GrocartLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get onlineText {
    return _GrocartLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get goOnline {
    return _GrocartLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get goOffline {
    return _GrocartLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get orders {
    return _GrocartLocalizedValues[locale.languageCode]!['orders'];
  }

  String? get ride {
    return _GrocartLocalizedValues[locale.languageCode]!['ride'];
  }

  String? get earnings {
    return _GrocartLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get location {
    return _GrocartLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get grant {
    return _GrocartLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get homeText1 {
    return _GrocartLocalizedValues[locale.languageCode]!['homeText1'];
  }

  String? get homeText2 {
    return _GrocartLocalizedValues[locale.languageCode]!['homeText2'];
  }

  String? get bodyText1 {
    return _GrocartLocalizedValues[locale.languageCode]!['bodyText1'];
  }

  String? get bodyText2 {
    return _GrocartLocalizedValues[locale.languageCode]!['bodyText2'];
  }

  String? get mobileText {
    return _GrocartLocalizedValues[locale.languageCode]!['mobileText'];
  }

  String? get continueText {
    return _GrocartLocalizedValues[locale.languageCode]!['continueText'];
  }

  String? get homeText {
    return _GrocartLocalizedValues[locale.languageCode]!['homeText'];
  }

  String? get money {
    return _GrocartLocalizedValues[locale.languageCode]!['money'];
  }

  String? get account {
    return _GrocartLocalizedValues[locale.languageCode]!['account'];
  }

  String? get orderText {
    return _GrocartLocalizedValues[locale.languageCode]!['orderText'];
  }

  String? get tnc {
    return _GrocartLocalizedValues[locale.languageCode]!['tnc'];
  }

  String? get support {
    return _GrocartLocalizedValues[locale.languageCode]!['support'];
  }

  String? get aboutUs {
    return _GrocartLocalizedValues[locale.languageCode]!['aboutUs'];
  }

  String? get login {
    return _GrocartLocalizedValues[locale.languageCode]!['login'];
  }

  String? get noLoginText {
    return _GrocartLocalizedValues[locale.languageCode]!['noLoginText'];
  }

  String? get logout {
    return _GrocartLocalizedValues[locale.languageCode]!['logout'];
  }

  String? get loggingOut {
    return _GrocartLocalizedValues[locale.languageCode]!['loggingOut'];
  }

  String? get areYouSure {
    return _GrocartLocalizedValues[locale.languageCode]!['areYouSure'];
  }

  String? get yes {
    return _GrocartLocalizedValues[locale.languageCode]!['yes'];
  }

  String? get no {
    return _GrocartLocalizedValues[locale.languageCode]!['no'];
  }

  String? get aboutDelivoo {
    return _GrocartLocalizedValues[locale.languageCode]!['aboutDelivoo'];
  }

  String? get saved {
    return _GrocartLocalizedValues[locale.languageCode]!['saved'];
  }

  String? get booked {
    return _GrocartLocalizedValues[locale.languageCode]!['booked'];
  }

  String? get thankstb {
    return _GrocartLocalizedValues[locale.languageCode]!['thankstb'];
  }

  String? get savedText {
    return _GrocartLocalizedValues[locale.languageCode]!['savedText'];
  }

  String? get notLogin {
    return _GrocartLocalizedValues[locale.languageCode]!['notLogin'];
  }

  String? get loginText {
    return _GrocartLocalizedValues[locale.languageCode]!['loginText'];
  }

  String? get ourVision {
    return _GrocartLocalizedValues[locale.languageCode]!['ourVision'];
  }

  String? get rebook {
    return _GrocartLocalizedValues[locale.languageCode]!['rebook'];
  }

  String? get cancel {
    return _GrocartLocalizedValues[locale.languageCode]!['cancel'];
  }

  String? get companyPolicy {
    return _GrocartLocalizedValues[locale.languageCode]!['companyPolicy'];
  }

  String? get booking {
    return _GrocartLocalizedValues[locale.languageCode]!['booking'];
  }

  String? get pe {
    return _GrocartLocalizedValues[locale.languageCode]!['pe'];
  }

  String? get per {
    return _GrocartLocalizedValues[locale.languageCode]!['per'];
  }

  String? get pers {
    return _GrocartLocalizedValues[locale.languageCode]!['pers'];
  }

  String? get termsOfUse {
    return _GrocartLocalizedValues[locale.languageCode]!['termsOfUse'];
  }

  String? get perso {
    return _GrocartLocalizedValues[locale.languageCode]!['perso'];
  }

  String? get date {
    return _GrocartLocalizedValues[locale.languageCode]!['date'];
  }

  String? get da {
    return _GrocartLocalizedValues[locale.languageCode]!['da'];
  }

  String? get dat {
    return _GrocartLocalizedValues[locale.languageCode]!['dat'];
  }

  String? get datee {
    return _GrocartLocalizedValues[locale.languageCode]!['datee'];
  }

  String? get dateee {
    return _GrocartLocalizedValues[locale.languageCode]!['dateee'];
  }

  String? get dateeee {
    return _GrocartLocalizedValues[locale.languageCode]!['dateeee'];
  }

  String? get person {
    return _GrocartLocalizedValues[locale.languageCode]!['person'];
  }

  String? get select {
    return _GrocartLocalizedValues[locale.languageCode]!['select'];
  }

  String? get pastt {
    return _GrocartLocalizedValues[locale.languageCode]!['pastt'];
  }

  String? get upcomming {
    return _GrocartLocalizedValues[locale.languageCode]!['upcomming'];
  }

  String? get message {
    return _GrocartLocalizedValues[locale.languageCode]!['message'];
  }

  String? get tabletext {
    return _GrocartLocalizedValues[locale.languageCode]!['tabletext'];
  }

  String? get enterMessage {
    return _GrocartLocalizedValues[locale.languageCode]!['enterMessage'];
  }

  String? get orWrite {
    return _GrocartLocalizedValues[locale.languageCode]!['orWrite'];
  }

  String? get yourWords {
    return _GrocartLocalizedValues[locale.languageCode]!['yourWords'];
  }

  String? get online {
    return _GrocartLocalizedValues[locale.languageCode]!['online'];
  }

  String? get recent {
    return _GrocartLocalizedValues[locale.languageCode]!['recent'];
  }

  String? get upload {
    return _GrocartLocalizedValues[locale.languageCode]!['upload'];
  }

  String? get updateInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['updateInfo'];
  }

  String? get instruction {
    return _GrocartLocalizedValues[locale.languageCode]!['instruction'];
  }

  String? get cod {
    return _GrocartLocalizedValues[locale.languageCode]!['cod'];
  }

  String? get backToHome {
    return _GrocartLocalizedValues[locale.languageCode]!['backToHome'];
  }

  String? get viewEarnings {
    return _GrocartLocalizedValues[locale.languageCode]!['viewEarnings'];
  }

  String? get yourEarnings {
    return _GrocartLocalizedValues[locale.languageCode]!['yourEarnings'];
  }

  String? get youDrived {
    return _GrocartLocalizedValues[locale.languageCode]!['youDrived'];
  }

  String? get viewOrderInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['viewOrderInfo'];
  }

  String? get delivered {
    return _GrocartLocalizedValues[locale.languageCode]!['delivered'];
  }

  String? get thankYou {
    return _GrocartLocalizedValues[locale.languageCode]!['thankYou'];
  }

  String? get newDeliveryTask {
    return _GrocartLocalizedValues[locale.languageCode]!['newDeliveryTask'];
  }

  String? get orderInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['orderInfo'];
  }

  String? get close {
    return _GrocartLocalizedValues[locale.languageCode]!['close'];
  }

  String? get direction {
    return _GrocartLocalizedValues[locale.languageCode]!['direction'];
  }

  String? get ironBox {
    return _GrocartLocalizedValues[locale.languageCode]!['ironBox'];
  }

  String? get drone {
    return _GrocartLocalizedValues[locale.languageCode]!['drone'];
  }

  String? get ac {
    return _GrocartLocalizedValues[locale.languageCode]!['ac'];
  }

  String? get fan {
    return _GrocartLocalizedValues[locale.languageCode]!['fan'];
  }

  String? get lens {
    return _GrocartLocalizedValues[locale.languageCode]!['lens'];
  }

  String? get mike {
    return _GrocartLocalizedValues[locale.languageCode]!['mike'];
  }

  String? get laptop {
    return _GrocartLocalizedValues[locale.languageCode]!['laptop'];
  }

  String? get mobile {
    return _GrocartLocalizedValues[locale.languageCode]!['mobile'];
  }

  String? get tv {
    return _GrocartLocalizedValues[locale.languageCode]!['tv'];
  }

  String? get penDrive {
    return _GrocartLocalizedValues[locale.languageCode]!['penDrive'];
  }

  String? get micro {
    return _GrocartLocalizedValues[locale.languageCode]!['micro'];
  }

  String? get watch {
    return _GrocartLocalizedValues[locale.languageCode]!['watch'];
  }

  String? get speaker {
    return _GrocartLocalizedValues[locale.languageCode]!['speaker'];
  }

  String? get powerBank {
    return _GrocartLocalizedValues[locale.languageCode]!['powerBank'];
  }

  String? get monitor {
    return _GrocartLocalizedValues[locale.languageCode]!['monitor'];
  }

  String? get coffee {
    return _GrocartLocalizedValues[locale.languageCode]!['coffee'];
  }

  String? get headSet {
    return _GrocartLocalizedValues[locale.languageCode]!['headSet'];
  }

  String? get brandInTv {
    return _GrocartLocalizedValues[locale.languageCode]!['brandInTv'];
  }

  String? get brandInLap {
    return _GrocartLocalizedValues[locale.languageCode]!['brandInLap'];
  }

  String? get headBluetooth {
    return _GrocartLocalizedValues[locale.languageCode]!['headBluetooth'];
  }

  String? get droneCam {
    return _GrocartLocalizedValues[locale.languageCode]!['droneCam'];
  }

  String? get playStation {
    return _GrocartLocalizedValues[locale.languageCode]!['playStation'];
  }

  String? get play {
    return _GrocartLocalizedValues[locale.languageCode]!['play'];
  }

  String? get dresses {
    return _GrocartLocalizedValues[locale.languageCode]!['dresses'];
  }

  String? get electronics {
    return _GrocartLocalizedValues[locale.languageCode]!['electronics'];
  }

  String? get headItems {
    return _GrocartLocalizedValues[locale.languageCode]!['headItems'];
  }

  String? get markPicked {
    return _GrocartLocalizedValues[locale.languageCode]!['markPicked'];
  }

  String? get markDelivered {
    return _GrocartLocalizedValues[locale.languageCode]!['markDelivered'];
  }

  String? get acceptDelivery {
    return _GrocartLocalizedValues[locale.languageCode]!['acceptDelivery'];
  }

  String? get address {
    return _GrocartLocalizedValues[locale.languageCode]!['address'];
  }

  String? get storeAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['storeAddress'];
  }

  String? get search {
    return _GrocartLocalizedValues[locale.languageCode]!['search'];
  }

  String? get apply {
    return _GrocartLocalizedValues[locale.languageCode]!['apply'];
  }

  String? get add {
    return _GrocartLocalizedValues[locale.languageCode]!['add'];
  }

  String? get viewCartSite {
    return _GrocartLocalizedValues[locale.languageCode]!['viewCartSite'];
  }

  String? get buyNow {
    return _GrocartLocalizedValues[locale.languageCode]!['buyNow'];
  }

  String? get placed {
    return _GrocartLocalizedValues[locale.languageCode]!['placed'];
  }

  String? get thanks {
    return _GrocartLocalizedValues[locale.languageCode]!['thanks'];
  }

  String? get confirm {
    return _GrocartLocalizedValues[locale.languageCode]!['confirm'];
  }

  String? get selectPayment {
    return _GrocartLocalizedValues[locale.languageCode]!['selectPayment'];
  }

  String? get amount {
    return _GrocartLocalizedValues[locale.languageCode]!['amount'];
  }

  String? get card {
    return _GrocartLocalizedValues[locale.languageCode]!['card'];
  }

  String? get credit {
    return _GrocartLocalizedValues[locale.languageCode]!['credit'];
  }

  String? get debit {
    return _GrocartLocalizedValues[locale.languageCode]!['debit'];
  }

  String? get cash {
    return _GrocartLocalizedValues[locale.languageCode]!['cash'];
  }

  String? get other {
    return _GrocartLocalizedValues[locale.languageCode]!['other'];
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

  String? get setLocation {
    return _GrocartLocalizedValues[locale.languageCode]!['setLocation'];
  }

  String? get enterLocation {
    return _GrocartLocalizedValues[locale.languageCode]!['enterLocation'];
  }

  String? get saveAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['saveAddress'];
  }

  String? get addressLabel {
    return _GrocartLocalizedValues[locale.languageCode]!['addressLabel'];
  }

  String? get office {
    return _GrocartLocalizedValues[locale.languageCode]!['office'];
  }

  String? get addNew {
    return _GrocartLocalizedValues[locale.languageCode]!['addNew'];
  }

  String? get submit {
    return _GrocartLocalizedValues[locale.languageCode]!['submit'];
  }

  String? get change {
    return _GrocartLocalizedValues[locale.languageCode]!['change'];
  }

  String? get pay {
    return _GrocartLocalizedValues[locale.languageCode]!['pay'];
  }

  String? get deliver {
    return _GrocartLocalizedValues[locale.languageCode]!['deliver'];
  }

  String? get service {
    return _GrocartLocalizedValues[locale.languageCode]!['service'];
  }

  String? get sub {
    return _GrocartLocalizedValues[locale.languageCode]!['sub'];
  }

  String? get paymentInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['paymentInfo'];
  }

  String? get pickup {
    return _GrocartLocalizedValues[locale.languageCode]!['pickup'];
  }

  String? get process {
    return _GrocartLocalizedValues[locale.languageCode]!['process'];
  }

  String? get custom {
    return _GrocartLocalizedValues[locale.languageCode]!['custom'];
  }

  String? get storeFound {
    return _GrocartLocalizedValues[locale.languageCode]!['storeFound'];
  }

  String? get send {
    return _GrocartLocalizedValues[locale.languageCode]!['send'];
  }

  String? get pickupText {
    return _GrocartLocalizedValues[locale.languageCode]!['pickupText'];
  }

  String? get pickupAddress {
    return _GrocartLocalizedValues[locale.languageCode]!['pickupAddress'];
  }

  String? get dropText {
    return _GrocartLocalizedValues[locale.languageCode]!['dropText'];
  }

  String? get drop {
    return _GrocartLocalizedValues[locale.languageCode]!['drop'];
  }

  String? get packageText {
    return _GrocartLocalizedValues[locale.languageCode]!['packageText'];
  }

  String? get package {
    return _GrocartLocalizedValues[locale.languageCode]!['package'];
  }

  String? get deliveryCharge {
    return _GrocartLocalizedValues[locale.languageCode]!['deliveryCharge'];
  }

  String? get done {
    return _GrocartLocalizedValues[locale.languageCode]!['done'];
  }

  String? get electronic {
    return _GrocartLocalizedValues[locale.languageCode]!['electronic'];
  }

  String? get household {
    return _GrocartLocalizedValues[locale.languageCode]!['household'];
  }

  String? get or {
    return _GrocartLocalizedValues[locale.languageCode]!['or'];
  }

  String? get continueWith {
    return _GrocartLocalizedValues[locale.languageCode]!['continueWith'];
  }

  String? get facebook {
    return _GrocartLocalizedValues[locale.languageCode]!['facebook'];
  }

  String? get google {
    return _GrocartLocalizedValues[locale.languageCode]!['google'];
  }

  String? get apple {
    return _GrocartLocalizedValues[locale.languageCode]!['apple'];
  }

  String? get walletSite {
    return _GrocartLocalizedValues[locale.languageCode]!['walletSite'];
  }

  String? get settings {
    return _GrocartLocalizedValues[locale.languageCode]!['settings'];
  }

  String? get availableBalance {
    return _GrocartLocalizedValues[locale.languageCode]!['availableBalance'];
  }

  String? get addingAmount {
    return _GrocartLocalizedValues[locale.languageCode]!['addingAmount'];
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
    return _GrocartLocalizedValues[locale.languageCode]!['enterAmountToTransfer'];
  }

  String? get bankInfo {
    return _GrocartLocalizedValues[locale.languageCode]!['bankInfo'];
  }

  String? get display {
    return _GrocartLocalizedValues[locale.languageCode]!['display'];
  }

  String? get darkMode {
    return _GrocartLocalizedValues[locale.languageCode]!['darkMode'];
  }

  String? get darkText {
    return _GrocartLocalizedValues[locale.languageCode]!['darkText'];
  }

  String? get selectLanguage {
    return _GrocartLocalizedValues[locale.languageCode]!['language'];
  }

  String? get name1 {
    return _GrocartLocalizedValues[locale.languageCode]!['name1'];
  }

  String? get name2 {
    return _GrocartLocalizedValues[locale.languageCode]!['name2'];
  }

  String? get name3 {
    return _GrocartLocalizedValues[locale.languageCode]!['name3'];
  }

  String? get name4 {
    return _GrocartLocalizedValues[locale.languageCode]!['name4'];
  }

  String? get name5 {
    return _GrocartLocalizedValues[locale.languageCode]!['name5'];
  }

  String? get content1 {
    return _GrocartLocalizedValues[locale.languageCode]!['content1'];
  }

  String? get content2 {
    return _GrocartLocalizedValues[locale.languageCode]!['content2'];
  }

  String? get past {
    return _GrocartLocalizedValues[locale.languageCode]!['past'];
  }

  String? get rateNowSite {
    return _GrocartLocalizedValues[locale.languageCode]!['rateNowSite'];
  }

  String? get deliv {
    return _GrocartLocalizedValues[locale.languageCode]!['deliv'];
  }

  String? get how {
    return _GrocartLocalizedValues[locale.languageCode]!['how'];
  }

  String? get withR {
    return _GrocartLocalizedValues[locale.languageCode]!['withR'];
  }

  String? get addReview {
    return _GrocartLocalizedValues[locale.languageCode]!['addReview'];
  }

  String? get writeReview {
    return _GrocartLocalizedValues[locale.languageCode]!['writeReview'];
  }

  String? get feedback {
    return _GrocartLocalizedValues[locale.languageCode]!['feedback'];
  }

  String? get hey {
    return _GrocartLocalizedValues[locale.languageCode]!['hey'];
  }

  String? get lightText {
    return _GrocartLocalizedValues[locale.languageCode]!['lightText'];
  }

  String? get lightMode {
    return _GrocartLocalizedValues[locale.languageCode]!['lightMode'];
  }

  String? get fav {
    return _GrocartLocalizedValues[locale.languageCode]!['fav'];
  }

  String? get enterAmountToAdd {
    return _GrocartLocalizedValues[locale.languageCode]!['enterAmountToAdd'];
  }

  String? get addVia {
    return _GrocartLocalizedValues[locale.languageCode]!['addVia'];
  }

  String? get desCam {
    return _GrocartLocalizedValues[locale.languageCode]!['desCam'];
  }

  String? get desDrone {
    return _GrocartLocalizedValues[locale.languageCode]!['desDrone'];
  }

  String? get desMic {
    return _GrocartLocalizedValues[locale.languageCode]!['desMic'];
  }

  String? get desIron {
    return _GrocartLocalizedValues[locale.languageCode]!['desIron'];
  }

  String? get desFan {
    return _GrocartLocalizedValues[locale.languageCode]!['desFan'];
  }

  String? get desAC {
    return _GrocartLocalizedValues[locale.languageCode]!['desAC'];
  }

  String? get desHeadset {
    return _GrocartLocalizedValues[locale.languageCode]!['desHeadset'];
  }

  String? get desPlay {
    return _GrocartLocalizedValues[locale.languageCode]!['desPlay'];
  }

  String? get desLap {
    return _GrocartLocalizedValues[locale.languageCode]!['desLap'];
  }

  String? get desMobile {
    return _GrocartLocalizedValues[locale.languageCode]!['desMobile'];
  }

  String? get desTV {
    return _GrocartLocalizedValues[locale.languageCode]!['desTV'];
  }

  String? get desCoffee {
    return _GrocartLocalizedValues[locale.languageCode]!['desCoffee'];
  }

  String? get itemSubHeading {
    return _GrocartLocalizedValues[locale.languageCode]!['itemSubHeading'];
  }

  String? get quick {
    return _GrocartLocalizedValues[locale.languageCode]!['quick'];
  }

  String? get best {
    return _GrocartLocalizedValues[locale.languageCode]!['best'];
  }

  String? get recentViews {
    return _GrocartLocalizedValues[locale.languageCode]!['recentViews'];
  }

  String? get addOffers {
    return _GrocartLocalizedValues[locale.languageCode]!['addOffers'];
  }

  String? get popular {
    return _GrocartLocalizedValues[locale.languageCode]!['popular'];
  }

  String? get mainCourse {
    return _GrocartLocalizedValues[locale.languageCode]!['mainCourse'];
  }

  String? get stater {
    return _GrocartLocalizedValues[locale.languageCode]!['stater'];
  }

  String? get itemPrice {
    return _GrocartLocalizedValues[locale.languageCode]!['itemPrice'];
  }

  String? get buy {
    return _GrocartLocalizedValues[locale.languageCode]!['buy'];
  }

  String? get buy1 {
    return _GrocartLocalizedValues[locale.languageCode]!['buy1'];
  }

  String? get offersYou {
    return _GrocartLocalizedValues[locale.languageCode]!['offersYou'];
  }

  String? get seeAll {
    return _GrocartLocalizedValues[locale.languageCode]!['seeAll'];
  }

  String? get nearyou {
    return _GrocartLocalizedValues[locale.languageCode]!['nearyou'];
  }

  String? get flashSale {
    return _GrocartLocalizedValues[locale.languageCode]!['flashSale'];
  }

  String? get trending {
    return _GrocartLocalizedValues[locale.languageCode]!['trending'];
  }

  String? get recoment {
    return _GrocartLocalizedValues[locale.languageCode]!['recoment'];
  }

  String? get orderTextt {
    return _GrocartLocalizedValues[locale.languageCode]!['orderTextt'];
  }

  String? get englishh {
    return _GrocartLocalizedValues[locale.languageCode]!['englishh'];
  }

  String? get arabicc {
    return _GrocartLocalizedValues[locale.languageCode]!['arabicc'];
  }

  String? get frenchh {
    return _GrocartLocalizedValues[locale.languageCode]!['frenchh'];
  }

  String? get indonesiann {
    return _GrocartLocalizedValues[locale.languageCode]!['indonesiann'];
  }

  String? get portuguesee {
    return _GrocartLocalizedValues[locale.languageCode]!['portuguesee'];
  }

  String? get spanishh {
    return _GrocartLocalizedValues[locale.languageCode]!['spanishh'];
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
    return SynchronousFuture<GrocartLocalizations>(GrocartLocalizations(locale));
  }

  @override
  bool shouldReload(GrocartLocalizationsDelegate old) => false;
}
