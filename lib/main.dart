import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/my_app.dart';

// List<CameraDescription> cameras;
List<String> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  cameras = await availableCameras();
  runApp(MyApp());
}
