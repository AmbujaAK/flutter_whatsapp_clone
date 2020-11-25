import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/call_model.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callHistory.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(height: 10.0),
          ListTile(
            leading: CircleAvatar(
              radius: 28.0,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                callHistory[i].avatarUrl,
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  callHistory[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      callHistory[i].callIcon,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      callHistory[i].time,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            trailing: Icon(
              callHistory[i].callTypeIcon,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
