import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  final String title;
  StatusSection({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
