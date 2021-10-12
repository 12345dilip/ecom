import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spicy/OrderMapBloc/order_map_bloc.dart';
import 'package:spicy/OrderMapBloc/order_map_state.dart';
import 'package:spicy/Themes/colors.dart';
import 'package:spicy/map_utils.dart';

class TrackOrderSite extends StatefulWidget {
  const TrackOrderSite({Key? key}) : super(key: key);

  @override
  _TrackOrderSiteState createState() => _TrackOrderSiteState();
}

class _TrackOrderSiteState extends State<TrackOrderSite> {
  Completer<GoogleMapController> _googleMapController = Completer();
  GoogleMapController? _googleMapStyleController;
  Set<Marker> _marker = {};

  @override
  void initState() {
    rootBundle.loadString('images/map_style.txt').then((string) {
      mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 190.0,
      color: Theme.of(context).cardColor,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 10.0, bottom: 15.0, right: 18.0),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Stack(children: <Widget>[
                Hero(
                  tag: 'Delivery Boy',
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 22.0,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'George Anderson',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Text(
                                'Delivery Partner',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontSize: 11.7,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffc2c2c2)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Icon(
                          Icons.chat,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.phone,
                          color: mainColor,
                        )
                      ]),
                ),
              ]),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  BlocBuilder<OrderMapBloc, OrderMapState>(
                      builder: (context, state) {
                    print('polyyyy' + state.polylineCode.toString());
                    return GoogleMap(
                      polylines: state.polylineCode,
                      mapType: MapType.normal,
                      initialCameraPosition: kGooglePlex,
                      markers: _marker,
                      onMapCreated: (GoogleMapController controller) async {
                        _googleMapController.complete(controller);
                        _googleMapStyleController = controller;
                        _googleMapStyleController!.setMapStyle(mapStyle);
                        setState(() {
                          _marker.add(
                            Marker(
                              markerId: MarkerId('mark1'),
                              position:
                                  LatLng(37.42796133580664, -122.085749655962),
                              icon: markerss.first,
                            ),
                          );
                          _marker.add(
                            Marker(
                              markerId: MarkerId('mark2'),
                              position:
                                  LatLng(37.42496133180663, -122.081743655960),
                              icon: markerss[0],
                            ),
                          );
                        });
                      },
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
