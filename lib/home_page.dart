// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/call_screen.dart';
import 'package:flutter_whatsapp_clone/pages/camera_screen.dart';
import 'package:flutter_whatsapp_clone/pages/chat_screen.dart';
import 'package:flutter_whatsapp_clone/pages/setting_screen.dart';
import 'package:flutter_whatsapp_clone/pages/status_screen.dart';
import 'package:flutter_whatsapp_clone/utils/constants.dart';

class HomePage extends StatefulWidget {
  final List<String> cameras;
  HomePage({this.cameras});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 2, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
    });
    setState(() {});
  }

  void handleClick(String value, BuildContext context) {
    switch (value) {
      case 'Logout':
        MaterialPageRoute(builder: (context) => SettingScreen());
        break;
      case 'Settings':
        Navigator.of(context).pushNamed('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.kHomeTitle),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: Constants.kTabTitleChat),
            Tab(text: Constants.kTabTitleStatus),
            Tab(text: Constants.kTabTitleCalls),
          ],
        ),
        actions: [
          // Icon(Icons.search),
          // Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          // IconButton(
          //   icon: Icon(Icons.more_vert),
          //   onPressed: () {},
          // ),
          PopupMenuButton<String>(
            onSelected: (value) => handleClick(value, context),
            itemBuilder: (context) {
              return {
                'New Group',
                'New Broadcast',
                'WhatsApp Web',
                'Starred messages',
                'Payments',
                'Logout',
                'Settings'
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {
                print('open chat');
              },
            )
          : null,
    );
  }
}
