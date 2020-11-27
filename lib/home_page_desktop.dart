import 'package:flutter/material.dart';

class HomePageDesktop extends StatefulWidget {
  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Scaffold(
              appBar: AppBar(elevation: 0.8),
              body: Container(
                color: Colors.redAccent,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Scaffold(
              appBar: AppBar(elevation: 0.8),
              body: Container(
                color: Colors.greenAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
