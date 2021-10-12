import 'package:flutter/material.dart';
import 'package:delivery_app/AuthenticationPage/MobileNumberInputPage/UI/mobile_number_site.dart';
import 'package:delivery_app/AuthenticationPage/RegistrationPage/UI/register_site.dart';
import 'package:delivery_app/AuthenticationPage/VerificationPage/UI/verification_site.dart';
import 'package:delivery_app/AuthenticationPage/socialMedia_signin_site.dart';
import 'package:delivery_app/Routes/routers_site.dart';

GlobalKey<NavigatorState> navigatorKeyStore = GlobalKey<NavigatorState>();

class SigninRoutes {
  static const String signinRoot = 'login/';
  static const String socialMediaSignin = 'login/social';
  static const String registrationDetails = 'login/registration';
  static const String verificationDetails = 'login/verification';
}

class SigninData {
  final String mobile;
  final String nameText;
  final String emailType;

  SigninData(this.mobile, this.nameText, this.emailType);
}

class SigninNavigationSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKeyStore.currentState!.canPop();
        if (canPop) {
          navigatorKeyStore.currentState!.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKeyStore,
        initialRoute: SigninRoutes.signinRoot,
        onGenerateRoute: (RouteSettings settings) {
          late WidgetBuilder builder;
          switch (settings.name) {
            case SigninRoutes.signinRoot:
              builder = (BuildContext _) => MobileNumberSite();
              break;
            case SigninRoutes.socialMediaSignin:
              builder = (BuildContext _) => SocialMediaSignInSite();
              break;
            case SigninRoutes.registrationDetails:
              builder = (BuildContext _) => RegisterSite();
              break;
            case SigninRoutes.verificationDetails:
              builder = (BuildContext _) => VerificationSite(
                    () {
                      Navigator.popAndPushNamed(
                          context, RouterSite.accountSite);
                    },
                  );
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
