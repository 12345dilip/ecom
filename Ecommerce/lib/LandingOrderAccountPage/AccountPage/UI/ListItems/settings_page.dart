import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/Components/bottom_bar.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';
import 'package:spicy/language_cubit.dart';
import 'package:spicy/theme_cubit.dart';

class ThemeList {
  final String? heading;
  final String? subHeading;

  ThemeList({this.heading, this.subHeading});
}

class LanguageList {
  final String? heading;

  LanguageList({this.heading});
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool slideValue = false;
  late LanguageCubit _languageCubiter;
  late ThemeCubit _themeCubiter;
  String? selectLocalValue;
  String? selectThemeValue;

  @override
  void initState() {
    super.initState();
    _languageCubiter = BlocProvider.of<LanguageCubit>(context);
    _themeCubiter = BlocProvider.of<ThemeCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var locale = SpicyLocalizations.of(context)!;

    final List<String> language = [
      'English',
      'عربى',
      'français',
      'bahasa Indonesia',
      'português',
      'Español',
      'italiano',
      'Türk',
      'Kiswahili'
    ];
    final List<ThemeList> themes = <ThemeList>[
      ThemeList(
        heading: SpicyLocalizations.of(context)!.darkMode,
        subHeading: SpicyLocalizations.of(context)!.darkText,
      ),
      ThemeList(
        heading: SpicyLocalizations.of(context)!.lightMode,
        subHeading: SpicyLocalizations.of(context)!.lightText,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(SpicyLocalizations.of(context)!.settings!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
            color: mainTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 57.7,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      SpicyLocalizations.of(context)!.display!,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08,
                          fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: ListTile(
                    title: Text(
                      locale.darkMode!,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 16.3,
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      themes[1].subHeading!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.blueGrey),
                    ),
                    trailing: Switch(
                      value: slideValue,
                      onChanged: (value) {
                        setState(
                          () {
                            slideValue = value;

                            if (slideValue == true) {
                              _themeCubiter.selectDarkColorTheme();
                            } else if (slideValue == false) {
                              _themeCubiter.selectLightColorTheme();
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      SpicyLocalizations.of(context)!.selectLanguage!,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.08,
                          fontSize: 15),
                    ),
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: language.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      value: language[index],
                      groupValue: selectLocalValue,
                      title: Text(
                        language[index],
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16.3,
                            ),
                      ),
                      onChanged: (dynamic value) {
                        setState(() {
                          selectLocalValue = value;
                        });
                      },
                    );
                  },
                ),
              ],
              physics: BouncingScrollPhysics(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(
                  typeOftext: SpicyLocalizations.of(context)!.submit,
                  onClick: () {
                    if (selectLocalValue == 'English') {
                      _languageCubiter.selectEnglishLanguage();
                    } else if (selectLocalValue == 'عربى') {
                      _languageCubiter.selectArabuLanguage();
                    } else if (selectLocalValue == 'français') {
                      _languageCubiter.selectFrenchTypeLanguage();
                    } else if (selectLocalValue == 'bahasa Indonesia') {
                      _languageCubiter.selectIndonesiaLanguage();
                    } else if (selectLocalValue == 'português') {
                      _languageCubiter.selectPortugalLanguage();
                    } else if (selectLocalValue == 'Español') {
                      _languageCubiter.selectSpanLanguage();
                    } else if (selectLocalValue == 'italiano') {
                      _languageCubiter.selectItaliLanguage();
                    } else if (selectLocalValue == 'Türk') {
                      _languageCubiter.selectTurkiLanguage();
                    } else if (selectLocalValue == 'Kiswahili') {
                      _languageCubiter.selectSwahLanguage();
                    }

                    Navigator.pushNamed(context, PageRoutes.signInNavigator);
                  }),
            ),
          ],
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
