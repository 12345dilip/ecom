import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:spicy/Locale/italian.dart';
import 'package:spicy/Locale/swahili.dart';
import 'package:spicy/Locale/turkish.dart';
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

class SpicyLocalizations {
  final Locale locale;
  SpicyLocalizations(this.locale);

  static SpicyLocalizations? of(BuildContext context) {
    return Localizations.of<SpicyLocalizations>(context, SpicyLocalizations);
  }

  static Map<String, Map<String, String>> _spicyLocalizedValues = {
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
    return _spicyLocalizedValues[locale.languageCode]!['youreAlmostin'];
  }

  String? get customText {
    return _spicyLocalizedValues[locale.languageCode]!['customText'];
  }

  String? get invalidNumber {
    return _spicyLocalizedValues[locale.languageCode]!['invalidNumber'];
  }

  String? get networkError {
    return _spicyLocalizedValues[locale.languageCode]!['networkError'];
  }

  String? get register {
    return _spicyLocalizedValues[locale.languageCode]!['register'];
  }

  String? get invalidName {
    return _spicyLocalizedValues[locale.languageCode]!['invalidName'];
  }

  String? get invalidEmail {
    return _spicyLocalizedValues[locale.languageCode]!['invalidEmail'];
  }

  String? get invalidNameAndEmail {
    return _spicyLocalizedValues[locale.languageCode]!['invalidNameAndEmail'];
  }

  String? get fullName {
    return _spicyLocalizedValues[locale.languageCode]!['fullName'];
  }

  String? get emailAddress {
    return _spicyLocalizedValues[locale.languageCode]!['emailAddress'];
  }

  String? get mobileNumber {
    return _spicyLocalizedValues[locale.languageCode]!['mobileNumber'];
  }

  String? get verificationText {
    return _spicyLocalizedValues[locale.languageCode]!['verificationText'];
  }

  String? get verification {
    return _spicyLocalizedValues[locale.languageCode]!['verification'];
  }

  String? get checkNetwork {
    return _spicyLocalizedValues[locale.languageCode]!['checkNetwork'];
  }

  String? get invalidOTP {
    return _spicyLocalizedValues[locale.languageCode]!['invalidOTP'];
  }

  String? get enterVerification {
    return _spicyLocalizedValues[locale.languageCode]!['enterVerification'];
  }

  String? get verificationCode {
    return _spicyLocalizedValues[locale.languageCode]!['verificationCode'];
  }

  String? get resend {
    return _spicyLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get offlineText {
    return _spicyLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get onlineText {
    return _spicyLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get goOnline {
    return _spicyLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get goOffline {
    return _spicyLocalizedValues[locale.languageCode]!['resend'];
  }

  String? get orders {
    return _spicyLocalizedValues[locale.languageCode]!['orders'];
  }

  String? get ride {
    return _spicyLocalizedValues[locale.languageCode]!['ride'];
  }

  String? get earnings {
    return _spicyLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get location {
    return _spicyLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get grant {
    return _spicyLocalizedValues[locale.languageCode]!['earnings'];
  }

  String? get homeText1 {
    return _spicyLocalizedValues[locale.languageCode]!['homeText1'];
  }

  String? get homeText2 {
    return _spicyLocalizedValues[locale.languageCode]!['homeText2'];
  }

  String? get bodyText1 {
    return _spicyLocalizedValues[locale.languageCode]!['bodyText1'];
  }

  String? get bodyText2 {
    return _spicyLocalizedValues[locale.languageCode]!['bodyText2'];
  }

  String? get mobileText {
    return _spicyLocalizedValues[locale.languageCode]!['mobileText'];
  }

  String? get continueText {
    return _spicyLocalizedValues[locale.languageCode]!['continueText'];
  }

  String? get homeText {
    return _spicyLocalizedValues[locale.languageCode]!['homeText'];
  }

  String? get money {
    return _spicyLocalizedValues[locale.languageCode]!['money'];
  }

  String? get account {
    return _spicyLocalizedValues[locale.languageCode]!['account'];
  }

  String? get orderText {
    return _spicyLocalizedValues[locale.languageCode]!['orderText'];
  }

  String? get tnc {
    return _spicyLocalizedValues[locale.languageCode]!['tnc'];
  }

  String? get support {
    return _spicyLocalizedValues[locale.languageCode]!['support'];
  }

  String? get aboutUs {
    return _spicyLocalizedValues[locale.languageCode]!['aboutUs'];
  }

  String? get login {
    return _spicyLocalizedValues[locale.languageCode]!['login'];
  }

  String? get noLoginText {
    return _spicyLocalizedValues[locale.languageCode]!['noLoginText'];
  }

  String? get logout {
    return _spicyLocalizedValues[locale.languageCode]!['logout'];
  }

  String? get loggingOut {
    return _spicyLocalizedValues[locale.languageCode]!['loggingOut'];
  }

  String? get areYouSure {
    return _spicyLocalizedValues[locale.languageCode]!['areYouSure'];
  }

  String? get yes {
    return _spicyLocalizedValues[locale.languageCode]!['yes'];
  }

  String? get no {
    return _spicyLocalizedValues[locale.languageCode]!['no'];
  }

  String? get aboutDelivoo {
    return _spicyLocalizedValues[locale.languageCode]!['aboutDelivoo'];
  }

  String? get saved {
    return _spicyLocalizedValues[locale.languageCode]!['saved'];
  }

  String? get booked {
    return _spicyLocalizedValues[locale.languageCode]!['booked'];
  }

  String? get thankstb {
    return _spicyLocalizedValues[locale.languageCode]!['thankstb'];
  }

  String? get savedText {
    return _spicyLocalizedValues[locale.languageCode]!['savedText'];
  }

  String? get notLogin {
    return _spicyLocalizedValues[locale.languageCode]!['notLogin'];
  }

  String? get loginText {
    return _spicyLocalizedValues[locale.languageCode]!['loginText'];
  }

  String? get ourVision {
    return _spicyLocalizedValues[locale.languageCode]!['ourVision'];
  }

  String? get rebook {
    return _spicyLocalizedValues[locale.languageCode]!['rebook'];
  }

  String? get cancel {
    return _spicyLocalizedValues[locale.languageCode]!['cancel'];
  }

  String? get companyPolicy {
    return _spicyLocalizedValues[locale.languageCode]!['companyPolicy'];
  }

  String? get booking {
    return _spicyLocalizedValues[locale.languageCode]!['booking'];
  }

  String? get pe {
    return _spicyLocalizedValues[locale.languageCode]!['pe'];
  }

  String? get per {
    return _spicyLocalizedValues[locale.languageCode]!['per'];
  }

  String? get pers {
    return _spicyLocalizedValues[locale.languageCode]!['pers'];
  }

  String? get termsOfUse {
    return _spicyLocalizedValues[locale.languageCode]!['termsOfUse'];
  }

  String? get perso {
    return _spicyLocalizedValues[locale.languageCode]!['perso'];
  }

  String? get date {
    return _spicyLocalizedValues[locale.languageCode]!['date'];
  }

  String? get da {
    return _spicyLocalizedValues[locale.languageCode]!['da'];
  }

  String? get dat {
    return _spicyLocalizedValues[locale.languageCode]!['dat'];
  }

  String? get datee {
    return _spicyLocalizedValues[locale.languageCode]!['datee'];
  }

  String? get dateee {
    return _spicyLocalizedValues[locale.languageCode]!['dateee'];
  }

  String? get dateeee {
    return _spicyLocalizedValues[locale.languageCode]!['dateeee'];
  }

  String? get person {
    return _spicyLocalizedValues[locale.languageCode]!['person'];
  }

  String? get select {
    return _spicyLocalizedValues[locale.languageCode]!['select'];
  }

  String? get pastt {
    return _spicyLocalizedValues[locale.languageCode]!['pastt'];
  }

  String? get upcomming {
    return _spicyLocalizedValues[locale.languageCode]!['upcomming'];
  }

  String? get message {
    return _spicyLocalizedValues[locale.languageCode]!['message'];
  }

  String? get tabletext {
    return _spicyLocalizedValues[locale.languageCode]!['tabletext'];
  }

  String? get enterMessage {
    return _spicyLocalizedValues[locale.languageCode]!['enterMessage'];
  }

  String? get orWrite {
    return _spicyLocalizedValues[locale.languageCode]!['orWrite'];
  }

  String? get yourWords {
    return _spicyLocalizedValues[locale.languageCode]!['yourWords'];
  }

  String? get online {
    return _spicyLocalizedValues[locale.languageCode]!['online'];
  }

  String? get recent {
    return _spicyLocalizedValues[locale.languageCode]!['recent'];
  }

  String? get upload {
    return _spicyLocalizedValues[locale.languageCode]!['upload'];
  }

  String? get updateInfo {
    return _spicyLocalizedValues[locale.languageCode]!['updateInfo'];
  }

  String? get instruction {
    return _spicyLocalizedValues[locale.languageCode]!['instruction'];
  }

  String? get cod {
    return _spicyLocalizedValues[locale.languageCode]!['cod'];
  }

  String? get backToHome {
    return _spicyLocalizedValues[locale.languageCode]!['backToHome'];
  }

  String? get viewEarnings {
    return _spicyLocalizedValues[locale.languageCode]!['viewEarnings'];
  }

  String? get yourEarnings {
    return _spicyLocalizedValues[locale.languageCode]!['yourEarnings'];
  }

  String? get youDrived {
    return _spicyLocalizedValues[locale.languageCode]!['youDrived'];
  }

  String? get viewOrderInfo {
    return _spicyLocalizedValues[locale.languageCode]!['viewOrderInfo'];
  }

  String? get delivered {
    return _spicyLocalizedValues[locale.languageCode]!['delivered'];
  }

  String? get thankYou {
    return _spicyLocalizedValues[locale.languageCode]!['thankYou'];
  }

  String? get newDeliveryTask {
    return _spicyLocalizedValues[locale.languageCode]!['newDeliveryTask'];
  }

  String? get orderInfo {
    return _spicyLocalizedValues[locale.languageCode]!['orderInfo'];
  }

  String? get close {
    return _spicyLocalizedValues[locale.languageCode]!['close'];
  }

  String? get direction {
    return _spicyLocalizedValues[locale.languageCode]!['direction'];
  }

  String? get ironBox {
    return _spicyLocalizedValues[locale.languageCode]!['ironBox'];
  }

  String? get drone {
    return _spicyLocalizedValues[locale.languageCode]!['drone'];
  }

  String? get ac {
    return _spicyLocalizedValues[locale.languageCode]!['ac'];
  }

  String? get fan {
    return _spicyLocalizedValues[locale.languageCode]!['fan'];
  }

  String? get lens {
    return _spicyLocalizedValues[locale.languageCode]!['lens'];
  }

  String? get mike {
    return _spicyLocalizedValues[locale.languageCode]!['mike'];
  }

  String? get laptop {
    return _spicyLocalizedValues[locale.languageCode]!['laptop'];
  }

  String? get mobile {
    return _spicyLocalizedValues[locale.languageCode]!['mobile'];
  }

  String? get tv {
    return _spicyLocalizedValues[locale.languageCode]!['tv'];
  }

  String? get penDrive {
    return _spicyLocalizedValues[locale.languageCode]!['penDrive'];
  }

  String? get micro {
    return _spicyLocalizedValues[locale.languageCode]!['micro'];
  }

  String? get watch {
    return _spicyLocalizedValues[locale.languageCode]!['watch'];
  }

  String? get speaker {
    return _spicyLocalizedValues[locale.languageCode]!['speaker'];
  }

  String? get powerBank {
    return _spicyLocalizedValues[locale.languageCode]!['powerBank'];
  }

  String? get monitor {
    return _spicyLocalizedValues[locale.languageCode]!['monitor'];
  }

  String? get coffee {
    return _spicyLocalizedValues[locale.languageCode]!['coffee'];
  }

  String? get headSet {
    return _spicyLocalizedValues[locale.languageCode]!['headSet'];
  }

  String? get brandInTv {
    return _spicyLocalizedValues[locale.languageCode]!['brandInTv'];
  }

  String? get brandInLap {
    return _spicyLocalizedValues[locale.languageCode]!['brandInLap'];
  }

  String? get headBluetooth {
    return _spicyLocalizedValues[locale.languageCode]!['headBluetooth'];
  }

  String? get droneCam {
    return _spicyLocalizedValues[locale.languageCode]!['droneCam'];
  }

  String? get playStation {
    return _spicyLocalizedValues[locale.languageCode]!['playStation'];
  }

  String? get play {
    return _spicyLocalizedValues[locale.languageCode]!['play'];
  }

  String? get dresses {
    return _spicyLocalizedValues[locale.languageCode]!['dresses'];
  }

  String? get electronics {
    return _spicyLocalizedValues[locale.languageCode]!['electronics'];
  }

  String? get headItems {
    return _spicyLocalizedValues[locale.languageCode]!['headItems'];
  }

  String? get markPicked {
    return _spicyLocalizedValues[locale.languageCode]!['markPicked'];
  }

  String? get markDelivered {
    return _spicyLocalizedValues[locale.languageCode]!['markDelivered'];
  }

  String? get acceptDelivery {
    return _spicyLocalizedValues[locale.languageCode]!['acceptDelivery'];
  }

  String? get address {
    return _spicyLocalizedValues[locale.languageCode]!['address'];
  }

  String? get storeAddress {
    return _spicyLocalizedValues[locale.languageCode]!['storeAddress'];
  }

  String? get search {
    return _spicyLocalizedValues[locale.languageCode]!['search'];
  }

  String? get apply {
    return _spicyLocalizedValues[locale.languageCode]!['apply'];
  }

  String? get add {
    return _spicyLocalizedValues[locale.languageCode]!['add'];
  }

  String? get viewCartSite {
    return _spicyLocalizedValues[locale.languageCode]!['viewCartSite'];
  }

  String? get buyNow {
    return _spicyLocalizedValues[locale.languageCode]!['buyNow'];
  }

  String? get placed {
    return _spicyLocalizedValues[locale.languageCode]!['placed'];
  }

  String? get thanks {
    return _spicyLocalizedValues[locale.languageCode]!['thanks'];
  }

  String? get confirm {
    return _spicyLocalizedValues[locale.languageCode]!['confirm'];
  }

  String? get selectPayment {
    return _spicyLocalizedValues[locale.languageCode]!['selectPayment'];
  }

  String? get amount {
    return _spicyLocalizedValues[locale.languageCode]!['amount'];
  }

  String? get card {
    return _spicyLocalizedValues[locale.languageCode]!['card'];
  }

  String? get credit {
    return _spicyLocalizedValues[locale.languageCode]!['credit'];
  }

  String? get debit {
    return _spicyLocalizedValues[locale.languageCode]!['debit'];
  }

  String? get cash {
    return _spicyLocalizedValues[locale.languageCode]!['cash'];
  }

  String? get other {
    return _spicyLocalizedValues[locale.languageCode]!['other'];
  }

  String? get paypal {
    return _spicyLocalizedValues[locale.languageCode]!['paypal'];
  }

  String? get payU {
    return _spicyLocalizedValues[locale.languageCode]!['payU'];
  }

  String? get stripe {
    return _spicyLocalizedValues[locale.languageCode]!['stripe'];
  }

  String? get setLocation {
    return _spicyLocalizedValues[locale.languageCode]!['setLocation'];
  }

  String? get enterLocation {
    return _spicyLocalizedValues[locale.languageCode]!['enterLocation'];
  }

  String? get saveAddress {
    return _spicyLocalizedValues[locale.languageCode]!['saveAddress'];
  }

  String? get addressLabel {
    return _spicyLocalizedValues[locale.languageCode]!['addressLabel'];
  }

  String? get office {
    return _spicyLocalizedValues[locale.languageCode]!['office'];
  }

  String? get addNew {
    return _spicyLocalizedValues[locale.languageCode]!['addNew'];
  }

  String? get submit {
    return _spicyLocalizedValues[locale.languageCode]!['submit'];
  }

  String? get change {
    return _spicyLocalizedValues[locale.languageCode]!['change'];
  }

  String? get pay {
    return _spicyLocalizedValues[locale.languageCode]!['pay'];
  }

  String? get deliver {
    return _spicyLocalizedValues[locale.languageCode]!['deliver'];
  }

  String? get service {
    return _spicyLocalizedValues[locale.languageCode]!['service'];
  }

  String? get sub {
    return _spicyLocalizedValues[locale.languageCode]!['sub'];
  }

  String? get paymentInfo {
    return _spicyLocalizedValues[locale.languageCode]!['paymentInfo'];
  }

  String? get pickup {
    return _spicyLocalizedValues[locale.languageCode]!['pickup'];
  }

  String? get process {
    return _spicyLocalizedValues[locale.languageCode]!['process'];
  }

  String? get custom {
    return _spicyLocalizedValues[locale.languageCode]!['custom'];
  }

  String? get storeFound {
    return _spicyLocalizedValues[locale.languageCode]!['storeFound'];
  }

  String? get send {
    return _spicyLocalizedValues[locale.languageCode]!['send'];
  }

  String? get pickupText {
    return _spicyLocalizedValues[locale.languageCode]!['pickupText'];
  }

  String? get pickupAddress {
    return _spicyLocalizedValues[locale.languageCode]!['pickupAddress'];
  }

  String? get dropText {
    return _spicyLocalizedValues[locale.languageCode]!['dropText'];
  }

  String? get drop {
    return _spicyLocalizedValues[locale.languageCode]!['drop'];
  }

  String? get packageText {
    return _spicyLocalizedValues[locale.languageCode]!['packageText'];
  }

  String? get package {
    return _spicyLocalizedValues[locale.languageCode]!['package'];
  }

  String? get deliveryCharge {
    return _spicyLocalizedValues[locale.languageCode]!['deliveryCharge'];
  }

  String? get done {
    return _spicyLocalizedValues[locale.languageCode]!['done'];
  }

  String? get electronic {
    return _spicyLocalizedValues[locale.languageCode]!['electronic'];
  }

  String? get household {
    return _spicyLocalizedValues[locale.languageCode]!['household'];
  }

  String? get or {
    return _spicyLocalizedValues[locale.languageCode]!['or'];
  }

  String? get continueWith {
    return _spicyLocalizedValues[locale.languageCode]!['continueWith'];
  }

  String? get facebook {
    return _spicyLocalizedValues[locale.languageCode]!['facebook'];
  }

  String? get google {
    return _spicyLocalizedValues[locale.languageCode]!['google'];
  }

  String? get apple {
    return _spicyLocalizedValues[locale.languageCode]!['apple'];
  }

  String? get walletSite {
    return _spicyLocalizedValues[locale.languageCode]!['walletSite'];
  }

  String? get settings {
    return _spicyLocalizedValues[locale.languageCode]!['settings'];
  }

  String? get availableBalance {
    return _spicyLocalizedValues[locale.languageCode]!['availableBalance'];
  }

  String? get addingAmount {
    return _spicyLocalizedValues[locale.languageCode]!['addingAmount'];
  }

  String? get accountHolderName {
    return _spicyLocalizedValues[locale.languageCode]!['accountHolderName'];
  }

  String? get bankName {
    return _spicyLocalizedValues[locale.languageCode]!['bankName'];
  }

  String? get branchCode {
    return _spicyLocalizedValues[locale.languageCode]!['branchCode'];
  }

  String? get accountNumber {
    return _spicyLocalizedValues[locale.languageCode]!['accountNumber'];
  }

  String? get enterAmountToTransfer {
    return _spicyLocalizedValues[locale.languageCode]!['enterAmountToTransfer'];
  }

  String? get bankInfo {
    return _spicyLocalizedValues[locale.languageCode]!['bankInfo'];
  }

  String? get display {
    return _spicyLocalizedValues[locale.languageCode]!['display'];
  }

  String? get darkMode {
    return _spicyLocalizedValues[locale.languageCode]!['darkMode'];
  }

  String? get darkText {
    return _spicyLocalizedValues[locale.languageCode]!['darkText'];
  }

  String? get selectLanguage {
    return _spicyLocalizedValues[locale.languageCode]!['language'];
  }

  String? get name1 {
    return _spicyLocalizedValues[locale.languageCode]!['name1'];
  }

  String? get name2 {
    return _spicyLocalizedValues[locale.languageCode]!['name2'];
  }

  String? get name3 {
    return _spicyLocalizedValues[locale.languageCode]!['name3'];
  }

  String? get name4 {
    return _spicyLocalizedValues[locale.languageCode]!['name4'];
  }

  String? get name5 {
    return _spicyLocalizedValues[locale.languageCode]!['name5'];
  }

  String? get content1 {
    return _spicyLocalizedValues[locale.languageCode]!['content1'];
  }

  String? get content2 {
    return _spicyLocalizedValues[locale.languageCode]!['content2'];
  }

  String? get past {
    return _spicyLocalizedValues[locale.languageCode]!['past'];
  }

  String? get rateNowSite {
    return _spicyLocalizedValues[locale.languageCode]!['rateNowSite'];
  }

  String? get deliv {
    return _spicyLocalizedValues[locale.languageCode]!['deliv'];
  }

  String? get how {
    return _spicyLocalizedValues[locale.languageCode]!['how'];
  }

  String? get withR {
    return _spicyLocalizedValues[locale.languageCode]!['withR'];
  }

  String? get addReview {
    return _spicyLocalizedValues[locale.languageCode]!['addReview'];
  }

  String? get writeReview {
    return _spicyLocalizedValues[locale.languageCode]!['writeReview'];
  }

  String? get feedback {
    return _spicyLocalizedValues[locale.languageCode]!['feedback'];
  }

  String? get hey {
    return _spicyLocalizedValues[locale.languageCode]!['hey'];
  }

  String? get lightText {
    return _spicyLocalizedValues[locale.languageCode]!['lightText'];
  }

  String? get lightMode {
    return _spicyLocalizedValues[locale.languageCode]!['lightMode'];
  }

  String? get fav {
    return _spicyLocalizedValues[locale.languageCode]!['fav'];
  }

  String? get enterAmountToAdd {
    return _spicyLocalizedValues[locale.languageCode]!['enterAmountToAdd'];
  }

  String? get addVia {
    return _spicyLocalizedValues[locale.languageCode]!['addVia'];
  }

  String? get desCam {
    return _spicyLocalizedValues[locale.languageCode]!['desCam'];
  }

  String? get desDrone {
    return _spicyLocalizedValues[locale.languageCode]!['desDrone'];
  }

  String? get desMic {
    return _spicyLocalizedValues[locale.languageCode]!['desMic'];
  }

  String? get desIron {
    return _spicyLocalizedValues[locale.languageCode]!['desIron'];
  }

  String? get desFan {
    return _spicyLocalizedValues[locale.languageCode]!['desFan'];
  }

  String? get desAC {
    return _spicyLocalizedValues[locale.languageCode]!['desAC'];
  }

  String? get desHeadset {
    return _spicyLocalizedValues[locale.languageCode]!['desHeadset'];
  }

  String? get desPlay {
    return _spicyLocalizedValues[locale.languageCode]!['desPlay'];
  }

  String? get desLap {
    return _spicyLocalizedValues[locale.languageCode]!['desLap'];
  }

  String? get desMobile {
    return _spicyLocalizedValues[locale.languageCode]!['desMobile'];
  }

  String? get desTV {
    return _spicyLocalizedValues[locale.languageCode]!['desTV'];
  }

  String? get desCoffee {
    return _spicyLocalizedValues[locale.languageCode]!['desCoffee'];
  }

  String? get itemSubHeading {
    return _spicyLocalizedValues[locale.languageCode]!['itemSubHeading'];
  }

  String? get quick {
    return _spicyLocalizedValues[locale.languageCode]!['quick'];
  }

  String? get best {
    return _spicyLocalizedValues[locale.languageCode]!['best'];
  }

  String? get recentViews {
    return _spicyLocalizedValues[locale.languageCode]!['recentViews'];
  }

  String? get addOffers {
    return _spicyLocalizedValues[locale.languageCode]!['addOffers'];
  }

  String? get popular {
    return _spicyLocalizedValues[locale.languageCode]!['popular'];
  }

  String? get mainCourse {
    return _spicyLocalizedValues[locale.languageCode]!['mainCourse'];
  }

  String? get stater {
    return _spicyLocalizedValues[locale.languageCode]!['stater'];
  }

  String? get itemPrice {
    return _spicyLocalizedValues[locale.languageCode]!['itemPrice'];
  }

  String? get buy {
    return _spicyLocalizedValues[locale.languageCode]!['buy'];
  }

  String? get buy1 {
    return _spicyLocalizedValues[locale.languageCode]!['buy1'];
  }

  String? get offersYou {
    return _spicyLocalizedValues[locale.languageCode]!['offersYou'];
  }

  String? get seeAll {
    return _spicyLocalizedValues[locale.languageCode]!['seeAll'];
  }

  String? get nearyou {
    return _spicyLocalizedValues[locale.languageCode]!['nearyou'];
  }

  String? get flashSale {
    return _spicyLocalizedValues[locale.languageCode]!['flashSale'];
  }

  String? get trending {
    return _spicyLocalizedValues[locale.languageCode]!['trending'];
  }

  String? get recoment {
    return _spicyLocalizedValues[locale.languageCode]!['recoment'];
  }

  String? get orderTextt {
    return _spicyLocalizedValues[locale.languageCode]!['orderTextt'];
  }

  String? get englishh {
    return _spicyLocalizedValues[locale.languageCode]!['englishh'];
  }

  String? get arabicc {
    return _spicyLocalizedValues[locale.languageCode]!['arabicc'];
  }

  String? get frenchh {
    return _spicyLocalizedValues[locale.languageCode]!['frenchh'];
  }

  String? get indonesiann {
    return _spicyLocalizedValues[locale.languageCode]!['indonesiann'];
  }

  String? get portuguesee {
    return _spicyLocalizedValues[locale.languageCode]!['portuguesee'];
  }

  String? get spanishh {
    return _spicyLocalizedValues[locale.languageCode]!['spanishh'];
  }
}

class SpicyLocalizationsDelegate
    extends LocalizationsDelegate<SpicyLocalizations> {
  const SpicyLocalizationsDelegate();

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
  Future<SpicyLocalizations> load(Locale locale) {
    return SynchronousFuture<SpicyLocalizations>(SpicyLocalizations(locale));
  }

  @override
  bool shouldReload(SpicyLocalizationsDelegate old) => false;
}
