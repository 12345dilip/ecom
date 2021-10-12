import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Authentication/login_navigator_page.dart';
import 'package:spicy/Components/bottom_bar.dart';
import 'package:spicy/Components/textfield.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Themes/colors.dart';

class LoginSocialMediaPage extends StatefulWidget {
  @override
  _LoginSocialMediaPageState createState() => _LoginSocialMediaPageState();
}

class _LoginSocialMediaPageState extends State<LoginSocialMediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).cardColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            titleSpacing: 0,
            backgroundColor: Theme.of(context).cardColor,
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
        ),
        body: FadedSlideAnimation(
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadedScaleAnimation(
                      Text(
                        SpicyLocalizations.of(context)!.hey!,
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontSize: 16.3),
                      ),
                      durationInMilliseconds: 800,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      SpicyLocalizations.of(context)!.youreAlmostin!,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 18.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("PHONE NUMBER",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 12))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 33),
                      child: Column(
                        children: [
                          SmallSizeTextFormField(null, "+1 984 596 4521"),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Text(
                        SpicyLocalizations.of(context)!.verificationText!,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 12.8),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomBar(
                    typeOftext: SpicyLocalizations.of(context)!.continueText,
                    onClick: () {
                      Navigator.pushNamed(
                          context, LoginRoutes.verificationProcess);
                    }),
              )
            ],
          ),
          beginOffset: Offset(0.0, 0.3),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ));
  }
}
