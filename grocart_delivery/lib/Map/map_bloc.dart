import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocart_delivery/Map/map_key.dart';
import 'package:grocart_delivery/Map/map_state.dart';

class OrderMapBloc extends Cubit<OrderMapState> {
  OrderMapBloc() : super(OrderMapState({}, {}));

  void loadMap() async {
    Set<Polyline> polyCode = Set();
    var polylines = await _getPolyLine();
    Set<Marker> setMark = Set();
    setMark.addAll(_marker);
    polyCode.add(polylines);
    emit(OrderMapState(polyCode, setMark));
  }

  Future<Polyline> _getPolyLine() async {
    PolylineId number = PolylineId('poly');
    Polyline polyCode = Polyline(
      width: 3,
      polylineId: number,
      points: await _getPolylineCoordinates(
        LatLng(37.42796133580664, -122.085749655962),
        LatLng(37.42496133180663, -122.081743655960),
      ),
    );
    return polyCode;
  }

  Future<List<LatLng>> _getPolylineCoordinates(
      LatLng pickupLatitude, LatLng dropLatitude) async {
    List<LatLng> polylineCode = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      apiAddressKey,
      PointLatLng(pickupLatitude.latitude, pickupLatitude.longitude),
      PointLatLng(dropLatitude.latitude, dropLatitude.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCode.add(LatLng(point.latitude, point.longitude));
      });
    }
    print(polylineCode);
    return polylineCode;
  }

  List<Marker> _marker = [
    Marker(
      markerId: MarkerId('mark1'),
      position: LatLng(37.42796133580664, -122.085749655962),
      icon: markerss.first,
    ),
  ];
}
