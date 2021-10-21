import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkColorTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: mainColor,
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
  ),
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    bodyText1: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),
    bodyText2: TextStyle(
      fontSize: 18.3,
      color: disabledColor,
    ),
    button: TextStyle(
      fontSize: 13.3,
      color: whiteColor,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),
    headline6: TextStyle(
      color: lightTextColor,
      fontSize: 13.3,
    ),
    headline5: TextStyle(
      color: disabledColor,
      fontSize: 20.0,
    ),
    caption: TextStyle(
      color: Colors.white,
      fontSize: 13.3,
    ),
    overline: TextStyle(color: lightTextColor, letterSpacing: 0.2),
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

final ThemeData appColorTheme = ThemeData(
  fontFamily: 'ProductSans',
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
  ),
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    bodyText1: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),
    bodyText2: TextStyle(
      fontSize: 18.3,
      color: disabledColor,
    ),
    button: TextStyle(
      fontSize: 13.3,
      color: whiteColor,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),
    headline6: TextStyle(
      color: lightTextColor,
      fontSize: 13.3,
    ),
    headline5: TextStyle(
      color: disabledColor,
      fontSize: 20.0,
    ),
    caption: TextStyle(
      color: mainTextColor,
      fontSize: 13.3,
    ),
    overline: TextStyle(color: lightTextColor, letterSpacing: 0.2),
    headline2: TextStyle(
      color: mainTextColor,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    ),
    subtitle2: TextStyle(
      color: lightTextColor,
      fontSize: 15.0,
    ),
  ),
);

final TextStyle bottomBarTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 15.0,
  color: whiteColor,
  fontWeight: FontWeight.w400,
);

final TextStyle inputTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 20.0,
  color: Colors.black,
);

final TextStyle listTitleTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 16.7,
  fontWeight: FontWeight.bold,
  color: mainColor,
);

final TextStyle orderMapAppBarTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 13.3,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
