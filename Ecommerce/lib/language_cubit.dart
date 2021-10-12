import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(Locale('en'));

  void selectEnglishLanguage() {
    emit(Locale('en'));
  }

  void selectArabuLanguage() {
    emit(Locale('ar'));
  }

  void selectPortugalLanguage() {
    emit(Locale('pt'));
  }

  void selectFrenchTypeLanguage() {
    emit(Locale('fr'));
  }

  void selectIndonesiaLanguage() {
    emit(Locale('id'));
  }

  void selectSpanLanguage() {
    emit(Locale('es'));
  }

  void selectItaliLanguage() {
    emit(Locale('it'));
  }

  void selectTurkiLanguage() {
    emit(Locale('tr'));
  }

  void selectSwahLanguage() {
    emit(Locale('sw'));
  }
}
