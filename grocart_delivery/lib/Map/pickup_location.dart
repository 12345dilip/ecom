// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:grocart_delivery/Map/map_bloc.dart';
// import 'package:grocart_delivery/Map/map_key.dart';
// import 'package:grocart_delivery/Map/map_state.dart';
// import 'package:grocart_delivery/ThemeColors/colors.dart';

// class PickupLocationPage extends StatefulWidget {
//   const PickupLocationPage({Key? key}) : super(key: key);

//   @override
//   _PickupLocationPageState createState() => _PickupLocationPageState();
// }

// class _PickupLocationPageState extends State<PickupLocationPage> {
//   Completer<GoogleMapController> _googleMapController = Completer();
//   GoogleMapController? _googleMapStyleController;
//   Set<Marker> _marker = {};

//   @override
//   void initState() {
//     rootBundle.loadString('images/map_style.txt').then((string) {
//       mapStyle = string;
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 80,
//         leading: IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.arrow_back,
//               color: mainTextColor,
//             )),
//         title: Column(
//           children: [
//             Text(
//               'PICKUP FOOD',
//               style: TextStyle(color: mainTextColor),
//             ),
//             Text(
//               '9500340738',
//               style: TextStyle(color: mainTextColor),
//             )
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 50,
//               width: 50,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(width: 1, color: iconColor)),
//               child: Center(
//                 child: Text(
//                   'HELP',
//                   style: TextStyle(color: mainTextColor),
//                 ),
//               ),
//             ),
//           )
//         ],
//         backgroundColor: whiteColor,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Expanded(
//               child: Stack(
//                 children: <Widget>[
//                   BlocBuilder<OrderMapBloc, OrderMapState>(
//                       builder: (context, state) {
//                     print('polyyyy' + state.polylineCode.toString());
//                     return GoogleMap(
//                       polylines: state.polylineCode,
//                       mapType: MapType.normal,
//                       initialCameraPosition: kGooglePlex,
//                       markers: _marker,
//                       onMapCreated: (GoogleMapController controller) async {
//                         _googleMapController.complete(controller);
//                         _googleMapStyleController = controller;
//                         _googleMapStyleController!.setMapStyle(mapStyle);
//                         setState(() {
//                           _marker.add(
//                             Marker(
//                               markerId: MarkerId('mark1'),
//                               position:
//                                   LatLng(37.42796133580664, -122.085749655962),
//                               icon: markerss.first,
//                             ),
//                           );
//                           _marker.add(
//                             Marker(
//                               markerId: MarkerId('mark2'),
//                               position:
//                                   LatLng(37.42496133180663, -122.081743655960),
//                               icon: markerss[0],
//                             ),
//                           );
//                         });
//                       },
//                     );
//                   }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class PickupLocationPage extends StatefulWidget {
  @override
  _PickupLocationPageState createState() => _PickupLocationPageState();
}

class _PickupLocationPageState extends State<PickupLocationPage> {
  GoogleMapController? mapController;
  // double _originLatitude = 6.5212402, _originLongitude = 3.3679965;
  // double _destLatitude = 6.849660, _destLongitude = 3.648190;
  double _originLatitude = 26.48424, _originLongitude = 50.04551;
  double _destLatitude = 26.46423, _destLongitude = 50.06358;
  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = "Please provide your api key";

  @override
  void initState() {
    super.initState();

    /// origin marker
    _addMarker(LatLng(_originLatitude, _originLongitude), "origin",
        BitmapDescriptor.defaultMarker);

    /// destination marker
    _addMarker(LatLng(_destLatitude, _destLongitude), "destination",
        BitmapDescriptor.defaultMarkerWithHue(90));
    _getPolyline();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(_originLatitude, _originLongitude), zoom: 15),
        myLocationEnabled: true,
        tiltGesturesEnabled: true,
        compassEnabled: true,
        scrollGesturesEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(markers.values),
        polylines: Set<Polyline>.of(polylines.values),
      )),
    );
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleAPiKey,
        PointLatLng(_originLatitude, _originLongitude),
        PointLatLng(_destLatitude, _destLongitude),
        travelMode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
}
