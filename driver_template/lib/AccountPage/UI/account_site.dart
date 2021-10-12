import 'dart:async';
import 'package:delivery_app/OrderMapBlocSite/order_map_site.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:delivery_app/Components/list_tile_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/OrderMapBlocSite/order_map_bloc_site.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/map_utils_site.dart';

class AccountSite extends StatefulWidget {
  @override
  _AccountSiteState createState() => _AccountSiteState();
}

class _AccountSiteState extends State<AccountSite> {
  String? idNumber;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            child: UserProfileDetails(),
            height: 220.0,
          ),
          Divider(
            color: Theme.of(context).cardColor,
            thickness: 8.0,
          ),
          BuildListSite(
              photo: 'images/account/ic_menu_home.png',
              typeOfText: AppLocalizations.of(context)!.home,
              onClick: () =>
                  Navigator.popAndPushNamed(context, RouterSite.accountSite)),
          BuildListSite(
              photo: 'images/account/ic_menu_insight.png',
              typeOfText: AppLocalizations.of(context)!.chartInsight,
              onClick: () => Navigator.popAndPushNamed(
                  context, RouterSite.chartInsightPage)),
          BuildListSite(
            photo: 'images/account/ic_menu_wallet.png',
            typeOfText: AppLocalizations.of(context)!.headToWallet,
            onClick: () =>
                Navigator.popAndPushNamed(context, RouterSite.walletSite),
          ),
          BuildListSite(
              photo: 'images/account/ic_menu_tncact.png',
              typeOfText: AppLocalizations.of(context)!.termsAndConditions,
              onClick: () => Navigator.popAndPushNamed(
                  context, RouterSite.termsAndConditions)),
          BuildListSite(
              photo: 'images/account/ic_menu_supportact.png',
              typeOfText: AppLocalizations.of(context)!.supportSite,
              onClick: () => Navigator.popAndPushNamed(
                  context, RouterSite.supportSite,
                  arguments: idNumber)),
          BuildListSite(
            photo: 'images/account/ic_menu_setting.png',
            typeOfText: AppLocalizations.of(context)!.settingInfo,
            onClick: () =>
                Navigator.popAndPushNamed(context, RouterSite.settingSite),
          ),
          LogoutSite(),
        ],
      ),
    );
  }
}

class DrawerList {
  String heading;
  String photo;

  DrawerList(this.heading, this.photo);
}

class AccountPageSite extends StatelessWidget {
  const AccountPageSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderMapBlocSite>(
      create: (context) => OrderMapBlocSite()..loadMap(),
      child: AccountBodyItems(),
    );
  }
}

class AccountBodyItems extends StatefulWidget {
  @override
  _AccountBodyItemsState createState() => _AccountBodyItemsState();
}

class _AccountBodyItemsState extends State<AccountBodyItems> {
  bool offlineMode = false;
  Completer<GoogleMapController> _googleMapController = Completer();
  GoogleMapController? googleMapStyleController;
  Set<Marker> marks = {};

  @override
  void initState() {
    rootBundle.loadString('images/map_style.txt').then((string) {
      googleMapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: AppBar(
            iconTheme: IconThemeData(color: mainColor),
            title: Text(
                offlineMode
                    ? AppLocalizations.of(context)!.offline!
                    : AppLocalizations.of(context)!.online!,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: offlineMode
                    ? TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: mainColor,
                        ),
                        onPressed: () {
                          setState(() {
                            offlineMode = false;
                          });

                          //Navigator.popAndPushNamed(context, RouterSite.accountPage);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.goOnlineMode!,
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06),
                        ),
                      )
                    : TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xffff3939))),
                          backgroundColor: Color(0xffff3939),
                        ),
                        onPressed: () {
                          setState(() {
                            offlineMode = true;
                          });

                          // Navigator.popAndPushNamed(context, RouterSite.offlinePage);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.goOfflineMode!,
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
      drawer: AccountSite(),
      body: offlineMode
          ? Stack(
              children: <Widget>[
                BlocBuilder<OrderMapBlocSite, OrderMapSite>(
                    builder: (context, state) {
                  print('polyyyy' + state.polylineType.toString());
                  return GoogleMap(
                    // polylines: state.polylines,
                    mapType: MapType.normal,
                    initialCameraPosition: kGooglePlex,
                    markers: marks,
                    onMapCreated: (GoogleMapController controller) async {
                      _googleMapController.complete(controller);
                      googleMapStyleController = controller;
                      googleMapStyleController!.setMapStyle(googleMapStyle);
                      setState(() {
                        marks.add(
                          Marker(
                            markerId: MarkerId('mark1'),
                            position:
                                LatLng(37.42796133580664, -122.085749655962),
                            icon: markerss[1],
                          ),
                        );
                      });
                    },
                  );
                }),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    margin: EdgeInsets.all(20.0),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '64',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.ordersList!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6a6c74)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '68 km',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.rideToInsight!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6a6c74)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '\$302.50',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.earningDetails!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6a6c74)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : BlocBuilder<OrderMapBlocSite, OrderMapSite>(
              builder: (context, state) {
              print('polyyyy' + state.polylineType.toString());
              return GoogleMap(
                // polylines: state.polylines,
                mapType: MapType.normal,
                initialCameraPosition: kGooglePlex,
                markers: marks,
                onMapCreated: (GoogleMapController controller) async {
                  _googleMapController.complete(controller);
                  googleMapStyleController = controller;
                  googleMapStyleController!.setMapStyle(googleMapStyle);
                  setState(() {
                    marks.add(
                      Marker(
                        markerId: MarkerId('mark1'),
                        position: LatLng(37.42796133580664, -122.085749655962),
                        icon: markerss[1],
                      ),
                    );
                  });
                },
              );
            }),
      floatingActionButton: offlineMode
          ? null
          : FloatingActionButton(
              backgroundColor: mainColor,
              child: Icon(Icons.list),
              onPressed: () =>
                  Navigator.pushNamed(context, RouterSite.newDeliverySite),
            ),
    );
  }
}

class LogoutSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildListSite(
      photo: 'images/account/ic_menu_logoutact.png',
      typeOfText: AppLocalizations.of(context)!.signOut,
      onClick: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(AppLocalizations.of(context)!.signingOut!),
                content: Text(AppLocalizations.of(context)!.sure!),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      AppLocalizations.of(context)!.not!,
                      style: TextStyle(
                        color: mainColor,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: transparentColor)),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: transparentColor)),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.yes!,
                        style: TextStyle(
                          color: mainColor,
                        ),
                      ),
                      onPressed: () {
                        Phoenix.rebirth(context);
                      })
                ],
              );
            });
      },
    );
  }
}

class UserProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 32.0,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            SizedBox(
              width: 20.0,
            ),
            InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, RouterSite.editProfileSite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('\n' + 'George Anderson',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text('\n' + '+1 987 654 3210',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Color(0xff9a9a9a))),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('deliveryman@email.com',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Color(0xff9a9a9a))),
                ],
              ),
            ),
          ],
        ));
  }
}
