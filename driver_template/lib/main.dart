import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/language_site.dart';
import 'package:delivery_app/theme_cubit_site.dart';
import 'AccountPage/UI/ListItems/settings_site.dart';
import 'map_utils_site.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  MapUtils.getMarkerPic();
  runApp(Phoenix(child: DeliveryApp()));
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubitSite>(
          create: (context) => LanguageCubitSite(),
        ),
        BlocProvider<ThemeCubitSite>(
          create: (context) => ThemeCubitSite(),
        ),
      ],
      child: BlocBuilder<ThemeCubitSite, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LanguageCubitSite, Locale>(
            builder: (_, locale) {
              return MaterialApp(
                localizationsDelegates: [
                  const AppLocalizationsDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [
                  const Locale('en'),
                  const Locale('pt'),
                  const Locale('fr'),
                  const Locale('id'),
                  const Locale('ar'),
                  const Locale('es'),
                  const Locale('it'),
                  const Locale('tr'),
                  const Locale('sw'),
                ],
                locale: locale,
                theme: theme,
                home: SettingSite(),
                routes: RouterSite().routes(),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
