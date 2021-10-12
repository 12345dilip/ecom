import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_app/ThemeSite/style_theme.dart';

class ThemeCubitSite extends Cubit<ThemeData> {
  ThemeCubitSite() : super(appTheme);

  void selectLightTheme() {
    emit(appTheme);
  }

  void selectDarkTheme() {
    emit(darkTheme);
  }
}
