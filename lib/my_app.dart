import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';
import 'package:flutter_whatsapp_clone/home_page_desktop.dart';
import 'package:flutter_whatsapp_clone/pages/setting_screen.dart';
import 'package:flutter_whatsapp_clone/utils/constants.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class MyApp extends StatefulWidget {
  final List<CameraDescription> cameras;
  MyApp({this.cameras});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _loadHome() {
    if (kIsWeb) {
      return HomePageDesktop();
    } else if (Platform.isWindows) {
      return HomePageDesktop();
    } else {
      return HomePage(cameras: widget.cameras);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.kHomeTitle,
      theme: ThemeData(
        primaryColor: Constants.kPrimaryColor,
        accentColor: Constants.kAccentColor,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => _loadHome(),
        '/settings': (context) => SettingScreen(colorState: false),
      },
    );
  }
}
