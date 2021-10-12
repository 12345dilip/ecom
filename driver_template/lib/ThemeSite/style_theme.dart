import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:google_fonts/google_fonts.dart';
//app theme

final ThemeData darkTheme = ThemeData.dark().copyWith(
  //fontFamily: 'OpenSans',
  scaffoldBackgroundColor: mainTextColor,
  secondaryHeaderColor: whiteColor,
  primaryColor: mainColor,
  bottomAppBarColor: mainTextColor,
  dividerColor: Color(0x1f000000),
  disabledColor: disabledColor,
  cardColor: Color(0xff212321),
  hintColor: lightTextColor,
  indicatorColor: mainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: mainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: mainColor)),
    alignedDropdown: false,
    buttonColor: mainColor,
    disabledColor: disabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: transparentColor,
    elevation: 0.0,
    iconTheme: IconThemeData(color: mainColor),
  ),
  //text theme which contains all text styles
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    //text style of 'Delivering almost everything' at phone_number page
    bodyText1: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),

    //text style of 'Everything.' at phone_number page
    bodyText2: TextStyle(
      fontSize: 18.3,
      letterSpacing: 1.0,
      color: disabledColor,
    ),

    //text style of button at phone_number page
    button: TextStyle(
      fontSize: 13.3,
      color: whiteColor,
    ),

    //text style of 'Got Delivered' at home page
    headline4: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),

    //text style of we'll send verification code at register page
    headline6: TextStyle(
      color: lightTextColor,
      fontSize: 13.3,
    ),

    //text style of 'everything you need' at home page
    headline5: TextStyle(
      color: disabledColor,
      fontSize: 20.0,
      letterSpacing: 0.5,
    ),

    //text entry text style
    caption: TextStyle(
      color: Colors.white,
      fontSize: 13.3,
    ),

    overline: TextStyle(color: lightTextColor, letterSpacing: 0.2),

    //text style of titles of card at home page
    headline2: TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    ),
    subtitle2: TextStyle(
      color: lightTextColor,
      fontSize: 15.0,
    ),
  ),
);

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  secondaryHeaderColor: mainTextColor,
  primaryColor: mainColor,
  bottomAppBarColor: whiteColor,
  dividerColor: Color(0x1f000000),
  disabledColor: disabledColor,
  cardColor: cardBackgroundColor,
  hintColor: lightTextColor,
  indicatorColor: mainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: mainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: mainColor)),
    alignedDropdown: false,
    buttonColor: mainColor,
    disabledColor: disabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: transparentColor,
    elevation: 0.0,
    iconTheme: IconThemeData(color: mainColor),
  ),
  //text theme which contains all text styles
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    //text style of 'Delivering almost everything' at phone_number page
    bodyText1: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),

    //text style of 'Everything.' at phone_number page
    bodyText2: TextStyle(
      fontSize: 18.3,
      letterSpacing: 1.0,
      color: disabledColor,
    ),

    //text style of button at phone_number page
    button: TextStyle(
      fontSize: 13.3,
      color: whiteColor,
    ),

    //text style of 'Got Delivered' at home page
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),

    //text style of we'll send verification code at register page
    headline6: TextStyle(
      color: lightTextColor,
      fontSize: 13.3,
    ),

    //text style of 'everything you need' at home page
    headline5: TextStyle(
      color: disabledColor,
      fontSize: 20.0,
      letterSpacing: 0.5,
    ),

    //text entry text style
    caption: TextStyle(
      color: mainTextColor,
      fontSize: 13.3,
    ),

    overline: TextStyle(color: lightTextColor, letterSpacing: 0.2),

    //text style of titles of card at home page
    headline2: TextStyle(
      color: mainTextColor,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    ),
    subtitle2: TextStyle(
      color: lightTextColor,
      fontSize: 15.0,
    ),
  ),
);

//text style of continue bottom bar
final TextStyle bottomBarTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 15.0,
  color: whiteColor,
  fontWeight: FontWeight.w400,
);

final TextStyle listTitleTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 16.7,
  fontWeight: FontWeight.bold,
  color: mainColor,
);
