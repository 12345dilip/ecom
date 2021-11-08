import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocart_delivery/Authentication/MobileNumber/UI/mobile_input_page.dart';
import 'package:grocart_delivery/Authentication/login_navigator.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class MobileNumber extends StatefulWidget {
  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: FadedSlideAnimation(child:
        SingleChildScrollView(
          child: Container(
            color: Theme.of(context).cardColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Spacer(),
                  Expanded(
                    child: FadedScaleAnimation(child:
                      Image.asset(
                        "images/GROCART.png",
                        scale: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: FadedScaleAnimation(child:
                      Image.asset(
                        "images/SIGNIN.png",
                      ),
                      
                    ),
                  ),
                  MobileInputPage(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 32.0,
                      color: Theme.of(context).cardColor,
                      child: Center(
                        child: Text(
                          GrocartLocalizations.of(context)!.or!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 10, color: Colors.blueGrey[800]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 15.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45.0,
                          width: 80.0,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, LoginRoutes.socialMediaLogin),
                            child: Container(
                              child: Image.asset(
                                'images/ic_login_google.png',
                                height: 19.0,
                                width: 19.7,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 45.0,
                          width: 80.0,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, LoginRoutes.socialMediaLogin),
                            child: Image.asset(
                              'images/ic_login_facebook.png',
                              height: 19.0,
                              width: 19.7,
                            ),
                          ),
                        ),
                        Container(
                          height: 45.0,
                          width: 80.0,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, LoginRoutes.socialMediaLogin),
                            child: Container(
                              child: Image.asset(
                                'images/ic_login_apple.png',
                                height: 19.0,
                                width: 19.7,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to grocart ?',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: mainTextColor)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, LoginRoutes.registration);
                        },
                        child: Text(GrocartLocalizations.of(context)!.register!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
