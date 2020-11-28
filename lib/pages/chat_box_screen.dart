import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/components/circular_avatar.dart';

class ChatBoxScreen extends StatefulWidget {
  @override
  _ChatBoxScreenState createState() => _ChatBoxScreenState();
}

class _ChatBoxScreenState extends State<ChatBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: CircularAvatar(),
        title: Text('Chat Box'),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call_rounded),
            onPressed: () {
              print('video call clicked!!');
            },
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              print('voice call clicked!!');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('menu clicked!!');
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MessageStream(),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'send',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
