import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_whatsapp_clone/bloc/settings_bloc.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';
import 'package:flutter_whatsapp_clone/home_page_desktop.dart';
import 'package:flutter_whatsapp_clone/pages/setting_screen.dart';
import 'package:flutter_whatsapp_clone/utils/constants.dart';
import 'package:flutter_whatsapp_clone/utils/my_app_settings.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

List<String> cameras;

class MyApp extends StatefulWidget {
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
      return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(MyAppSettings()),
      child: MaterialApp(
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
      ),
    );
  }
}
