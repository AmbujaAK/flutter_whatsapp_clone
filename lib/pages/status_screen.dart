import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/components/status_item_header.dart';
import 'package:flutter_whatsapp_clone/components/status_section.dart';
import '../models/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          StatusItemHeader(),
          StatusSection(title: "Recent updates"),
          Expanded(
            child: ListView.builder(
              itemCount: statusHistory.length,
              itemBuilder: (context, i) => Column(
                children: [
                  Divider(height: 1.0),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28.0,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            NetworkImage(statusHistory[i].avatarUrl),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            statusHistory[i].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            statusHistory[i].time,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          StatusSection(title: "Viewed updates"),
          Expanded(
            child: ListView.builder(
              itemCount: statusHistory.length,
              itemBuilder: (context, i) => Column(
                children: [
                  Divider(height: 1.0),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28.0,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            NetworkImage(statusHistory[i].avatarUrl),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            statusHistory[i].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            statusHistory[i].time,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
