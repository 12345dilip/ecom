import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

//Verification page that sends otp to the phone number entered on phone number page
class VerificationSite extends StatelessWidget {
  final VoidCallback findVerificationDone;

  VerificationSite(this.findVerificationDone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          AppLocalizations.of(context)!.findVerification!,
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16.7),
        ),
      ),
      body: OtpVerification(findVerificationDone),
    );
  }
}

//otp verification class
class OtpVerification extends StatefulWidget {
  final VoidCallback findVerificationDone;

  OtpVerification(this.findVerificationDone);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  int _counterValue = 20;
  late Timer _timerController;

  _startTimer() {
    //shows timer
    _counterValue = 20; //time counter

    _timerController = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counterValue > 0 ? _counterValue-- : _timerController.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    verifyPhoneNumber();
  }

  void verifyPhoneNumber() {
    //verify phone number method using otp
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            24,
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
                AppLocalizations.of(context)!.enterrunningVerificationCode!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 22,
                    color: Theme.of(context).secondaryHeaderColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: EntryFieldSite(
                // controller: _controller,
                readIndex: false,
                banner: AppLocalizations.of(context)!.runningVerificationCode,
                maximumLength: 6,
                typeOfKeyBoard: TextInputType.number,
                startingValue: '123456',
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '$_counterValue sec',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      padding: EdgeInsets.all(24.0),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!.resendOtpVerficationCode!,
                      style: TextStyle(
                        fontSize: 16.7,
                        color: mainColor,
                      ),
                    ),
                    onPressed: _counterValue < 1
                        ? () {
                            verifyPhoneNumber();
                          }
                        : null),
              ],
            ),
            BottomBarSite(
                typeOfText: AppLocalizations.of(context)!.continueTextType,
                onClick: () {
                  widget.findVerificationDone();
                }),
          ],
        ),
      ),
    );
  }
}
