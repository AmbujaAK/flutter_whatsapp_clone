import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/my_app.dart';

List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  print(cameras);
  runApp(MyApp(cameras: cameras));
}
