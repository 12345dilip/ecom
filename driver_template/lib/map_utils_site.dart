import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const String apiKey = 'AIzaSyC4xQ0n-BwL_gODzdOTI6eqmzABT7XtF9Y';
List<BitmapDescriptor> markerss = [];
String? googleMapStyle;

final CameraPosition kGooglePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

class MapUtils {
  static getMarkerPic() async {
    // var desc = await BitmapDescriptor.fromAssetImage(
    //         ImageConfiguration(devicePixelRatio: 5), Assets.icPin)
    //     .then((value) => icon = value);
    markerss
        .add(await createBitmapDescriptorFromImage('images/map_pin.png', ''));
    markerss.add(
        await createBitmapDescriptorFromImage('images/deliveryman.png', ''));
    // markerss.add(await createBitmapDescriptorFromImage('assets/drop.png',''));
  }

  static Future<BitmapDescriptor> createBitmapDescriptorFromImage(
      String imagee, String alphabet) async {
    ui.PictureRecorder recorder = new ui.PictureRecorder();
    Canvas c = new Canvas(recorder);

    double photoWidth = 70;
    double photoHeight = 70;

    // AssetBundle bundle = DefaultAssetBundle.of(context);
    ui.Image myPhoto = await load(imagee);
    /*await Util.getUiImage(bundle, "assets/images/image.png", imageWidth, imageHeight)*/

    paintImage(
        canvas: c, // c is the Canvas object in above code examples.
        image: myPhoto,
        rect: Rect.fromLTWH(0, 0, photoWidth, photoHeight * 1.1));

    TextPainter textPainter = new TextPainter(
        text: TextSpan(
            style: new TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
            ),
            text: alphabet),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);

    textPainter.layout();

    textPainter.paint(c, Offset(20, 6));

    final pictures = recorder.endRecording();
    final photo = await pictures.toImage(110, 110);
    final bytesBanner = await photo.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(bytesBanner!.buffer.asUint8List());
  }

  static Future<ui.Image> load(String asset) async {
    ByteData dataType = await rootBundle.load(asset);
    ui.Codec codec =
        await ui.instantiateImageCodec(dataType.buffer.asUint8List());
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }
}
