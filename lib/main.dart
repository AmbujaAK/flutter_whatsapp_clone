import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';
import './utils/constants.dart';

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
      title: Constants.kHomeTitle,
      theme: ThemeData(
        primaryColor: Constants.kPrimaryColor,
        accentColor: Constants.kAccentColor,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(cameras: cameras),
    );
  }
}
