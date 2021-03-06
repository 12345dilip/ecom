import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocart/Components/bottom_bar.dart';
import 'package:grocart/Components/custom_appbar.dart';
import 'package:grocart/Components/entry_field.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Maps/Components/address_type_button.dart';
import 'package:grocart/OrderMapBloc/order_map_bloc.dart';
import 'package:grocart/OrderMapBloc/order_map_state.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:grocart/map_utils.dart';

TextEditingController _address = TextEditingController();

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderMapBloc>(
      create: (context) => OrderMapBloc()..loadMap(),
      child: SetLocation(),
    );
  }
}

class SetLocation extends StatefulWidget {
  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  bool carded = false;
  Completer<GoogleMapController> _googleMapController = Completer();
  GoogleMapController? googleMapStyleController;

  @override
  void initState() {
    rootBundle.loadString('images/map_style.txt').then((string) {
      mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(126.0),
        child: CustomAppBar(
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
          headingWidget: Text(
            GrocartLocalizations.of(context)!.setLocation!,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: mainTextColor),
          ),
          onClick: null,
          hintText: GrocartLocalizations.of(context)!.enterLocation,
        ),
      ),
      body: FadedSlideAnimation(
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                Size.fromHeight(126).height -
                MediaQuery.of(context).padding.top,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      BlocBuilder<OrderMapBloc, OrderMapState>(
                          builder: (context, state) {
                        print('polyyyy' + state.polylineCode.toString());
                        return GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: kGooglePlex,
                          onMapCreated: (GoogleMapController controller) async {
                            _googleMapController.complete(controller);
                            googleMapStyleController = controller;
                            googleMapStyleController!.setMapStyle(mapStyle);
                          },
                        );
                      }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 36.0),
                            child: FadedScaleAnimation(
                              Image.asset(
                                'images/map_pin.png',
                                height: 36,
                              ),
                              durationInMilliseconds: 800,
                            ),
                          )),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FadedScaleAnimation(
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.my_location,
                                color: Colors.black,
                              ),
                            ),
                            durationInMilliseconds: 800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).cardColor,
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      FadedScaleAnimation(
                        Image.asset(
                          'images/map_pin.png',
                          scale: 2.5,
                        ),
                        durationInMilliseconds: 800,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: Text(
                          '1024,Central Residency Park,Paris, France',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
                carded ? SaveAddressCard() : Container(),
                BottomBar(
                    typeOftext: GrocartLocalizations.of(context)!.continueText,
                    onClick: () {
                      if (carded == false) {
                        setState(() {
                          carded = true;
                        });
                      } else {
                        Navigator.popAndPushNamed(
                            context, PageRoutes.homeOrderAccountSite);
                      }
                    }),
              ],
            ),
          ),
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

enum AddressType {
  House,
  Company,
  Other,
}
AddressType setAddress = AddressType.Other;

class SaveAddressCard extends StatefulWidget {
  @override
  _SaveAddressCardState createState() => _SaveAddressCardState();
}

class _SaveAddressCardState extends State<SaveAddressCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: EntryField(
                textEditController: _address,
                picture: GrocartLocalizations.of(context)!.addressLabel,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                GrocartLocalizations.of(context)!.saveAddress!.toUpperCase(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AddressTypeButton(
                    picture: GrocartLocalizations.of(context)!.homeText,
                    photo: 'images/address/home (1) 2.png',
                    onClick: () {
                      setState(() {
                        setAddress = AddressType.House;
                      });
                    },
                    isSelectedTheme: setAddress == AddressType.House,
                  ),
                  AddressTypeButton(
                    picture: GrocartLocalizations.of(context)!.office,
                    photo: 'images/address/building 2.png',
                    onClick: () {
                      setState(() {
                        setAddress = AddressType.Company;
                      });
                    },
                    isSelectedTheme: setAddress == AddressType.Company,
                  ),
                  AddressTypeButton(
                    picture: GrocartLocalizations.of(context)!.other,
                    photo: 'images/address/flat 2 (1).png',
                    onClick: () {
                      setState(() {
                        setAddress = AddressType.Other;
                      });
                    },
                    isSelectedTheme: setAddress == AddressType.Other,
                  ),
                ],
              ),
            )
          ],
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
