import 'package:flutter/material.dart';
import 'package:grocart/Authentication/MobileNumber/UI/mobile_number.dart';
import 'package:grocart/Authentication/RegistrationPage/UI/registration.dart';
import 'package:grocart/Authentication/VerificationPage/UI/verification.dart';
import 'package:grocart/Authentication/login_social_media_page.dart';
import 'package:grocart/Routers/routes.dart';

GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

class LoginRoutes {
  static const String login = 'signIn/';
  static const String registration = 'login/signUp';
  static const String verificationProcess = 'login/verification';
  static const String socialMediaLogin = 'login/social_login';
}

class LoginNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPopUp = navigator.currentState!.canPop();
        if (canPopUp) {
          navigator.currentState!.pop();
        }
        return !canPopUp;
      },
      child: Navigator(
        key: navigator,
        initialRoute: LoginRoutes.login,
        onGenerateRoute: (RouteSettings settings) {
          late WidgetBuilder builder;
          switch (settings.name) {
            case LoginRoutes.login:
              builder = (BuildContext _) => MobileNumber();
              break;
            case LoginRoutes.registration:
              builder = (BuildContext _) => Registration();
              break;
            case LoginRoutes.verificationProcess:
              builder = (BuildContext _) => Verification(() {
                    Navigator.popAndPushNamed(
                        context, PageRoutes.homeOrderAccountSite);
                  });
              break;
            case LoginRoutes.socialMediaLogin:
              builder = (BuildContext _) => LoginSocialMediaPage();
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
