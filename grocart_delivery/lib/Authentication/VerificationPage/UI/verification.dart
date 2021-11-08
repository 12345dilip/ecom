import 'dart:async';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_delivery/Components/bottom_bar.dart';
import 'package:grocart_delivery/Components/entry_field.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/Routers/routes.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class Verification extends StatelessWidget {
  final VoidCallback verification;

  Verification(this.verification);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
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
        elevation: 0.0,
        title: Text(
          GrocartLocalizations.of(context)!.verification!,
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 18),
        ),
      ),
      body: FadedSlideAnimation(
        child: OtpVerification(verification),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class OtpVerification extends StatefulWidget {
  final VoidCallback verification;

  OtpVerification(this.verification);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  bool showingDialogue = false;
  int _counting = 20;
  late Timer _setTimer;

  _beginTimer() {
    _counting = 20;

    _setTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counting > 0 ? _counting-- : _setTimer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    verifyPhoneNumber();
  }

  void verifyPhoneNumber() {
    _beginTimer();
  }

  @override
  void dispose() {
    _setTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                80,
            margin: EdgeInsets.only(bottom: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    GrocartLocalizations.of(context)!.enterVerification!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 16.3,
                        color: Theme.of(context).secondaryHeaderColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: EntryField(
                      GrocartLocalizations.of(context)!.verificationCode,
                      '1 2 3 4 5 6'),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '00:$_counting min',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(side: BorderSide.none),
                          padding: EdgeInsets.all(24.0),
                        ),
                        child: Text(
                          GrocartLocalizations.of(context)!.resend!,
                          style: TextStyle(
                            fontSize: 16.7,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: _counting < 1
                            ? () {
                                verifyPhoneNumber();
                              }
                            : null),
                  ],
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
                widget.verification();
              }),
        ),
      ],
    );
  }
}
