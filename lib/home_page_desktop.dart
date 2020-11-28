import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/chat_screen.dart';

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
                color: Colors.white10,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.search, color: Colors.grey),
                            onPressed: () {
                              showSearch(context: context, delegate: null);
                            },
                          ),
                          Expanded(child: TextField()),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ChatScreen(),
                    ),
                  ],
                ),
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
