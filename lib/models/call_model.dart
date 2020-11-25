import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final IconData callTypeIcon;
  final IconData callIcon;

  CallModel({
    this.name,
    this.message,
    this.time,
    this.avatarUrl,
    this.callTypeIcon,
    this.callIcon,
  });
}

List<CallModel> callHistory = [
  CallModel(
    name: "Ambuj Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "46 minutes ago",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    callTypeIcon: Icons.video_call_rounded,
    callIcon: Icons.call_made_rounded,
  ),
  CallModel(
    name: "Ambuj Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "15:30",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    callTypeIcon: Icons.call,
    callIcon: Icons.call_missed_outgoing_rounded,
  ),
  CallModel(
    name: "Ambuj Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "15:30",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    callTypeIcon: Icons.video_call_rounded,
    callIcon: Icons.call_made_rounded,
  ),
  CallModel(
    name: "Ambuj Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "15:30",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    callTypeIcon: Icons.video_call_rounded,
    callIcon: Icons.call_made_rounded,
  ),
  CallModel(
    name: "Ambuj Kumar",
    message: "Hey Flutter, You are so amazing !",
    time: "15:30",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    callTypeIcon: Icons.video_call_rounded,
    callIcon: Icons.call_end_rounded,
  ),
];
