import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';

// List<CameraDescription> cameras;
List<String> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(cameras: cameras),
    );
  }
}
