import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/language_site.dart';
import 'package:delivery_app/theme_cubit_site.dart';

class ThemeListDetails {
  final String? heading;
  final String? subHeading;

  ThemeListDetails({this.heading, this.subHeading});
}

class LanguageSite {
  final String? heading;

  LanguageSite({this.heading});
}

class SettingSite extends StatefulWidget {
  @override
  _SettingSiteState createState() => _SettingSiteState();
}

class _SettingSiteState extends State<SettingSite> {
  bool slideInfo = false;
  late LanguageCubitSite _languages;
  late ThemeCubitSite _themeColor;
  String? selectLocalValue;

  @override
  void initState() {
    super.initState();
    _languages = BlocProvider.of<LanguageCubitSite>(context);
    _themeColor = BlocProvider.of<ThemeCubitSite>(context);
  }

  @override
  Widget build(BuildContext context) {
    var localeVariable = AppLocalizations.of(context)!;

    final List<String> languageList = [
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
    final List<ThemeListDetails> colorTheme = <ThemeListDetails>[
      ThemeListDetails(
        heading: AppLocalizations.of(context)!.darkTheme,
        subHeading: AppLocalizations.of(context)!.darkTextType,
      ),
      ThemeListDetails(
        heading: AppLocalizations.of(context)!.lightTheme,
        subHeading: AppLocalizations.of(context)!.lightTextType,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(AppLocalizations.of(context)!.settingInfo!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold)),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 57.7,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                //color: cardBackgroundColor,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context)!.screenPlay!,
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
                    localeVariable.darkTheme!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 18.3,
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    colorTheme[1].subHeading!,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.blueGrey),
                  ),
                  trailing: Switch(
                    value: slideInfo,
                    onChanged: (value) {
                      setState(
                        () {
                          slideInfo = value;

                          if (slideInfo == true) {
                            _themeColor.selectDarkTheme();
                          } else if (slideInfo == false) {
                            _themeColor.selectLightTheme();
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 58.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context)!.selectLanguage!,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.08,
                        fontSize: 17),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: languageList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RadioListTile(
                    value: languageList[index],
                    groupValue: selectLocalValue,
                    title: Text(
                      languageList[index],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    onChanged: (dynamic value) {
                      setState(() {
                        selectLocalValue = value;
                      });
                    },
                  );
                },
              ),
              SizedBox(
                height: 100,
              ),
            ],
            physics: BouncingScrollPhysics(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBarSite(
                typeOfText: AppLocalizations.of(context)!.onSubmit,
                onClick: () {
                  if (selectLocalValue == 'English') {
                    _languages.selectEngLanguage();
                  } else if (selectLocalValue == 'عربى') {
                    _languages.selectArabicLanguage();
                  } else if (selectLocalValue == 'français') {
                    _languages.selectFrenchLanguage();
                  } else if (selectLocalValue == 'bahasa Indonesia') {
                    _languages.selectIndonesianLanguage();
                  } else if (selectLocalValue == 'português') {
                    _languages.selectPortugueseLanguage();
                  } else if (selectLocalValue == 'Español') {
                    _languages.selectSpanishLanguage();
                  } else if (selectLocalValue == 'italiano') {
                    _languages.selectItalianLanguage();
                  } else if (selectLocalValue == 'Türk') {
                    _languages.selectTurkishLanguage();
                  } else if (selectLocalValue == 'Kiswahili') {
                    _languages.selectSwahiliLanguage();
                  }

                  Navigator.pushNamed(context, RouterSite.loginNavigator);
                }),
          ),
        ],
      ),
    );
  }
}
