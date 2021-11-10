import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:grocart_shop/Auth/login_navigator.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/Routes/routes.dart';
import 'package:grocart_shop/language_cubit.dart';
import 'package:grocart_shop/map_utils.dart';
import 'package:grocart_shop/theme_cubit.dart';

void main() {
 WidgetsFlutterBinding.ensureInitialized();
 MapUtils.getMarkerPic();
  runApp(Phoenix(child: GrocartShop()));
}

class GrocartShop extends StatelessWidget {
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
          return BlocBuilder<LanguageCubit, Locale>(builder: (_, locale) {
            return MaterialApp(
              localizationsDelegates: [
                const AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en'),
                const Locale('ar'),
                const Locale('fr'),
                const Locale('id'),
                const Locale('pt'),
                const Locale('es'),
              ],
              debugShowCheckedModeBanner: false,
              locale: locale,
              theme: theme,
              home: LoginNavigator(),
              routes: PageRoutes().routes(),
            );
          });
        },
      ),
    );
  }
}
