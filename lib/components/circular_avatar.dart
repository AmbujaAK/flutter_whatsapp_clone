import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12.0,
      foregroundColor: Theme.of(context).primaryColor,
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(
        'https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg',
      ),
    );
  }
}
