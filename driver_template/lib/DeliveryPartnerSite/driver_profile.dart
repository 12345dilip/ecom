import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class DriverProfile extends StatelessWidget {
  final String? mobile;

  DriverProfile({this.mobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          AppLocalizations.of(context)!.editProfile!,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterFormSite(mobile),
    );
  }
}

class RegisterFormSite extends StatefulWidget {
  final String? mobile;

  RegisterFormSite(this.mobile);

  @override
  _RegisterFormSiteState createState() => _RegisterFormSiteState();
}

class _RegisterFormSiteState extends State<RegisterFormSite> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .featurePhoto!
                            .toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.67,
                            color: hintColor),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 99.0,
                          width: 99.0,
                          //color: Theme.of(context).cardColor,
                          child: Image.asset('images/profile.jpg'),
                        ),
                        SizedBox(width: 24.0),
                        Icon(
                          Icons.camera_alt,
                          color: mainColor,
                          size: 19.0,
                        ),
                        SizedBox(width: 14.3),
                        Text(AppLocalizations.of(context)!.imageUpload!,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: mainColor)),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      AppLocalizations.of(context)!
                          .profileDetails!
                          .toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: hintColor),
                    ),
                  ),
                  //name textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryFieldSite(
                      textCapitalValue: TextCapitalization.words,
                      banner: AppLocalizations.of(context)!
                          .registerFullName!
                          .toUpperCase(),
                      startingValue: 'George Anderson',
                    ),
                  ),
                  //category textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryFieldSite(
                      textCapitalValue: TextCapitalization.words,
                      banner:
                          AppLocalizations.of(context)!.gender!.toUpperCase(),
                      startingValue: 'MALE',
                      readIndex: true,
                      endIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  //phone textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryFieldSite(
                      banner:
                          AppLocalizations.of(context)!.phone!.toUpperCase(),
                      startingValue: '+1 987 654 3210',
                      readIndex: true,
                    ),
                  ),
                  //email textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryFieldSite(
                      textCapitalValue: TextCapitalization.none,
                      banner: AppLocalizations.of(context)!
                          .registerEmailAddress!
                          .toUpperCase(),
                      startingValue: 'deliveryman@email.com',
                      typeOfKeyBoard: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      AppLocalizations.of(context)!.documents!.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: hintColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: Image.asset(
                        'images/icons/id1.png',
                        height: 16.0,
                        color: mainColor,
                      ),
                      title: Text(
                        AppLocalizations.of(context)!
                            .governmentIdentification!
                            .toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontSize: 10.0, color: Color(0xff838383)),
                      ),
                      subtitle: Text(
                        'myvoterid.jpg',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(
                        AppLocalizations.of(context)!.upload!.toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Color(0xff76d13a),
                            letterSpacing: 0.67,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: Image.asset('images/icons/id2.png',
                          height: 16.0, color: Color(0xffb7b7b7)),
                      title: Text(
                        AppLocalizations.of(context)!.licence!.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontSize: 10.0, color: Color(0xff838383)),
                      ),
                      subtitle: Text(
                        'Not Uploaded yet',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Color(0xff8f8f8f)),
                      ),
                      trailing: Text(
                        AppLocalizations.of(context)!.upload!.toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Color(0xfffbaf03),
                            letterSpacing: 0.67,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    color: Theme.of(context).cardColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBarSite(
              typeOfText: AppLocalizations.of(context)!.updateDetails,
              onClick: () {
                Navigator.popAndPushNamed(context, RouterSite.accountSite);
              }),
        )
      ],
    );
  }
}
