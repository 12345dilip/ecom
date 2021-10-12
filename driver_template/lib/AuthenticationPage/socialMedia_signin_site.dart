import 'package:flutter/material.dart';
import 'package:delivery_app/AuthenticationPage/signin_navigator_site.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';

class SocialMediaSignInSite extends StatefulWidget {
  @override
  _SocialMediaSignInSiteState createState() => _SocialMediaSignInSiteState();
}

class _SocialMediaSignInSiteState extends State<SocialMediaSignInSite> {
  final TextEditingController _socialMediaController = TextEditingController();

  @override
  void dispose() {
    _socialMediaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            automaticallyImplyLeading: true,
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.hey!,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: EntryFieldSite(
                      entryFieldController: _socialMediaController,
                      banner: AppLocalizations.of(context)!.phone,
                      photo: 'images/icons/ic_phone.png',
                      typeOfKeyBoard: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 44.0),
                    child: Text(
                      AppLocalizations.of(context)!.verificationTextType!,
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
              child: BottomBarSite(
                  typeOfText: AppLocalizations.of(context)!.continueTextType,
                  onClick: () {
                    Navigator.pushNamed(
                        context, SigninRoutes.verificationDetails);
                  }),
            )
          ],
        ));
  }
}
