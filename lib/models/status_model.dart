class StatusModel {
  final String name;
  final String time;
  final String avatarUrl;
  final List<String> statusImageList;
  final double percent;

  StatusModel({
    this.name,
    this.time,
    this.avatarUrl,
    this.statusImageList,
    this.percent,
  });
}

List<StatusModel> statusHistory = [
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 09:18",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.2,
  ),
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 10:22",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.1,
  ),
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 11:28",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.8,
  ),
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 14:52",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.5,
  ),
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 14:52",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.9,
  ),
  StatusModel(
    name: "Ambuj Kumar",
    time: "Today, 14:52",
    avatarUrl:
        "https://pbs.twimg.com/profile_images/1004682548297863168/AS4ZiBRe_400x400.jpg",
    statusImageList: [],
    percent: 0.2,
  ),
];
