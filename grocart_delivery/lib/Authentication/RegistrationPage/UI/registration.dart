import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Authentication/login_navigator.dart';
import 'package:grocart_delivery/Components/bottom_bar.dart';
import 'package:grocart_delivery/Components/entry_field.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: FadedSlideAnimation(child:
        RegisterForm(),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                Center(
                  child: Image.asset(
                    'images/registerLogo.png',
                    scale: 2.0,
                  ),
                ),
                Text(GrocartLocalizations.of(context)!.register!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 25,
                        )),
                SizedBox(
                  height: 15,
                ),
                Row(
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
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 32.0,
                    color: Theme.of(context).cardColor,
                    child: Center(
                      child: Text(
                        'Or, register with email...',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 10, color: Colors.blueGrey[800]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                textInputField(
                    GrocartLocalizations.of(context)!.fullName!.toUpperCase(),
                    'Scarlet',
                    'images/icons/ic_name.png'),
                textInputField(
                  GrocartLocalizations.of(context)!.emailAddress!.toUpperCase(),
                  'scarlet@mail.com',
                  'images/icons/ic_mail.png',
                ),
                textInputField(
                  GrocartLocalizations.of(context)!.mobileNumber!.toUpperCase(),
                  '+1 9655551781',
                  'images/icons/ic_phone.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 80),
                  child: Text(
                    GrocartLocalizations.of(context)!.verificationText!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 12.8),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
              typeOftext: GrocartLocalizations.of(context)!.continueText,
              onClick: () {
                Navigator.pushNamed(context, LoginRoutes.verificationProcess);
              }),
        )
      ],
    );
  }

  Container textInputField(String heading, String hintText, String photo) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20,
                child: Image(
                  image: AssetImage(
                    photo,
                  ),
                  color: mainColor,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Text(heading,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12))
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 33),
            child: Column(
              children: [
                SmallSizeTextFormField(null, hintText),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
