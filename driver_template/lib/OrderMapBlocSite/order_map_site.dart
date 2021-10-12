import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderMapSite extends Equatable {
  final Set<Polyline> polylineType;
  final Set<Marker> marksType;

  OrderMapSite(this.polylineType, this.marksType);

  @override
  List<Object> get props => [polylineType, marksType];

  @override
  bool get stringify => true;
}
