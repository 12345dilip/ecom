import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocart_delivery/ThemeColors/theme_colors.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(appColorTheme);

  void selectLightColorTheme() {
    emit(appColorTheme);
  }

  void selectDarkColorTheme() {
    emit(darkColorTheme);
  }
}
