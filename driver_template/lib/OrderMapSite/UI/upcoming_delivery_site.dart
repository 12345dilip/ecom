import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:delivery_app/AccountPage/UI/account_site.dart';
import 'package:delivery_app/Components/bottom_bar_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/OrderMapSite/UI/slide_up_panel_site.dart';
import 'package:delivery_app/OrderMapBlocSite/order_map_bloc_site.dart';
import 'package:delivery_app/OrderMapBlocSite/order_map_site.dart';
import 'package:delivery_app/Routes/routers_site.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/map_utils_site.dart';

class UpcomingDeliverySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderMapBlocSite>(
      create: (context) => OrderMapBlocSite()..loadMap(),
      child: UpcomingDeliveryStructure(),
    );
  }
}

class UpcomingDeliveryStructure extends StatefulWidget {
  @override
  _UpcomingDeliveryStructureState createState() =>
      _UpcomingDeliveryStructureState();
}

class _UpcomingDeliveryStructureState extends State<UpcomingDeliveryStructure> {
  Completer<GoogleMapController> _googleMapController = Completer();
  GoogleMapController? googleMapStyleController;
  Set<Marker> _markss = {};

  @override
  void initState() {
    rootBundle.loadString('images/map_style.txt').then((string) {
      googleMapStyle = string;
    });
    super.initState();
  }

  bool onPick = false;
  bool onAccept = false;
  bool onOpened = false;

  @override
  Widget build(BuildContext context) {
    List<String?> itemNameList = [
      AppLocalizations.of(context)!.chickenSandwich,
      AppLocalizations.of(context)!.sandwich,
      AppLocalizations.of(context)!.juicy,
    ];
    return Scaffold(
      drawer: AccountSite(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: AppBar(
            title: Text(AppLocalizations.of(context)!.upComingDeliveryTask!,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500)),
            actions: <Widget>[
              onAccept
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                      child: TextButton.icon(
                        icon: Icon(
                          onOpened ? Icons.close : Icons.shopping_basket,
                          color: mainColor,
                          size: 13.0,
                        ),
                        label: Text(
                            onOpened
                                ? AppLocalizations.of(context)!.closing!
                                : AppLocalizations.of(context)!.orderDetails!,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor,
                                    )),
                        onPressed: () {
                          setState(() {
                            if (onOpened)
                              onOpened = false;
                            else
                              onOpened = true;
                          });
                        },
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                child: BlocBuilder<OrderMapBlocSite, OrderMapSite>(
                    builder: (context, state) {
                  print('polyyyy' + state.polylineType.toString());
                  return GoogleMap(
                    polylines: state.polylineType,
                    mapType: MapType.normal,
                    initialCameraPosition: kGooglePlex,
                    markers: _markss,
                    onMapCreated: (GoogleMapController controller) async {
                      _googleMapController.complete(controller);
                      googleMapStyleController = controller;
                      googleMapStyleController!.setMapStyle(googleMapStyle);
                      setState(() {
                        _markss.add(
                          Marker(
                            markerId: MarkerId('mark1'),
                            position:
                                LatLng(37.42796133580664, -122.085749655962),
                            icon: markerss.first,
                          ),
                        );
                        _markss.add(
                          Marker(
                            markerId: MarkerId('mark2'),
                            position:
                                LatLng(37.42496133180663, -122.081743655960),
                            icon: markerss[0],
                          ),
                        );
                        // _markers.add(
                        //   Marker(
                        //     markerId: MarkerId('mark3'),
                        //     position:
                        //         LatLng(37.42196183580660, -122.089743655967),
                        //     icon: markerss[2],
                        //   ),
                        // );
                      });
                    },
                  );
                }),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 50.0,
                    color: Theme.of(context).cardColor,
                    child: Row(
                      children: [
                        Image.asset(
                          'images/ride.png',
                          color: mainColor,
                          scale: 1.8,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '16.5 km ',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '(10 min)',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontSize: 11.7,
                                  letterSpacing: 0.06,
                                  color: Color(0xffc1c1c1)),
                        ),
                        Spacer(),
                        onAccept
                            ? TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                onPressed: () {
                                  /*...*/
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.navigation,
                                      color: mainColor,
                                      size: 14.0,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!
                                          .mapDirection!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.7,
                                              letterSpacing: 0.06),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 28.0, bottom: 6.0, top: 6.0, right: 10.0),
                          child: Icon(
                            Icons.location_on,
                            size: 14.0,
                            color: mainColor,
                          )),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of(context)!.shopName!,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      letterSpacing: 0.05,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1024, Hemiltone Street, USA',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.0, letterSpacing: 0.05),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      // Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.message,
                                  color: mainColor,
                                  size: 14.0,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RouterSite.chatRestaurantSite);
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.phone,
                                  color: mainColor,
                                  size: 14.0,
                                ),
                                onPressed: () {
                                  /*...........*/
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 28.0, bottom: 12.0, top: 12.0, right: 10.0),
                          child: Icon(
                            Icons.navigation,
                            size: 14.0,
                            color: mainColor,
                          )),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sam Smith',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      letterSpacing: 0.05,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'D-32, Deniel Street, USA',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 11.0, letterSpacing: 0.05),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.message,
                                  color: mainColor,
                                  size: 14.0,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RouterSite.chatPageUser);
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.phone,
                                  color: mainColor,
                                  size: 14.0,
                                ),
                                onPressed: () {
                                  /*...........*/
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  onPick
                      ? BottomBarSite(
                          typeOfText: AppLocalizations.of(context)!
                              .clickMentionedDelivered,
                          onClick: () => Navigator.popAndPushNamed(
                              context, RouterSite.deliverySuccessful))
                      : onAccept
                          ? BottomBarSite(
                              typeOfText:
                                  AppLocalizations.of(context)!.onPickedMark,
                              onClick: () {
                                setState(() {
                                  onPick = true;
                                });
                              })
                          : BottomBarSite(
                              typeOfText:
                                  AppLocalizations.of(context)!.accepted,
                              onClick: () {
                                setState(() {
                                  onAccept = true;
                                });
                              }),
                ],
              )
            ],
          ),
          onOpened ? OrderDetailsContainer(itemNameList) : SizedBox.shrink(),
        ],
      ),
    );
  }
}
