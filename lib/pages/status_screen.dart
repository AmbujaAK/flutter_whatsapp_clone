import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/components/status_item.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          StatusItemHeader(),
          StatusSection(title: "Recent updates"),
          Column(
            children: statusHistory
                .map(
                  (item) => StatusItem(
                    contactName: item.name,
                    time: item.time,
                    avatarUrl: item.avatarUrl,
                  ),
                )
                .toList(),
          ),
          StatusSection(title: "Viewed updates"),
          Column(
            children: statusHistory
                .map(
                  (item) => StatusItem(
                    contactName: item.name,
                    time: item.time,
                    avatarUrl: item.avatarUrl,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
