import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderMapState extends Equatable {
  final Set<Polyline> polylineCode;
  final Set<Marker> _marker;

  OrderMapState(this.polylineCode, this._marker);

  @override
  List<Object> get props => [polylineCode, _marker];

  @override
  bool get stringify => true;
}
