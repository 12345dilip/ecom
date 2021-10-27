import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ThreeDimentionView extends StatefulWidget {
  const ThreeDimentionView({Key? key}) : super(key: key);

  @override
  _ThreeDimentionViewState createState() => _ThreeDimentionViewState();
}

class _ThreeDimentionViewState extends State<ThreeDimentionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(Object(
                fileName:
                    'images/Video_camera_v1_L3.123c1f10b2cc-f83f-47bc-a1de-3d85b88483ae/10128_Video_camera_v1_L3.obj'));
            scene.camera.zoom = 20;
          },
        ),
      ),
    );
  }
}
