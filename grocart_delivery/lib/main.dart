import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Pages/language_cubit.dart';
import 'package:grocart_delivery/DriverAccountPage/Profile/ProfileList/settings.dart';
import 'package:grocart_delivery/ThemeColors/theme_cubit.dart';
import 'package:grocart_delivery/Routers/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(Phoenix(child: GrocartDelivery()));
}

class GrocartDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => LanguageCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LanguageCubit, Locale>(
            builder: (_, locale) {
              return MaterialApp(
                localizationsDelegates: [
                  const GrocartLocalizationsDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  const Locale('en'),
                  const Locale('ar'),
                  const Locale('fr'),
                  const Locale('id'),
                  const Locale('pt'),
                  const Locale('es'),
                  const Locale('it'),
                  const Locale('tr'),
                  const Locale('sw'),
                ],
                debugShowCheckedModeBanner: false,
                locale: locale,
                theme: theme,
                home: Settings(),
                routes: PageRoutes().routes(),
              );
            },
          );
        },
      ),
    );
  }
}
