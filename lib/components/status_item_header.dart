import 'package:flutter/material.dart';

class StatusItemHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white),
      child: ListTile(
        leading: CircleAvatar(
          radius: 28.0,
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
            'https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg',
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Status',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Tap to add status update',
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
