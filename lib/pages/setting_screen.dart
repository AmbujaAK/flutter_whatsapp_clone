import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final bool colorState;
  final Function onClick;
  SettingScreen({
    this.colorState,
    this.onClick,
  });

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Change color'),
                Checkbox(
                  value: widget.colorState,
                  onChanged: widget.onClick,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
