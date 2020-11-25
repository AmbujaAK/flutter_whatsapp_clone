import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatusItem extends StatelessWidget {
  final String contactName;
  final String time;
  final String avatarUrl;
  final bool isViewed;
  final List<String> statusImageList;
  final double statusPercentage;

  StatusItem({
    this.contactName,
    this.time,
    this.avatarUrl,
    this.isViewed,
    this.statusImageList,
    this.statusPercentage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white),
      child: ListTile(
        leading: CircularPercentIndicator(
          radius: 53.0,
          lineWidth: 3.0,
          percent: statusPercentage,
          progressColor: Theme.of(context).accentColor,
          center: CircleAvatar(
            radius: 22.0,
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
