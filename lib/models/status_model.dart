class StatusModel {
  final name;
  final avatar;
  final time;

  StatusModel({this.name, this.avatar, this.time});
}

List<StatusModel> statusData = <StatusModel>[
  StatusModel(
    name: 'Doe',
    time: '7:30',
    avatar: "assets/images/ced70a7c0b22478b092b1c96c268ca08.jpg",
  ),
  StatusModel(
    name: 'Ahsan',
    time: '11:10',
    avatar: "assets/images/IMG_20200226_143829.jpg",
  ),
  StatusModel(
    name: 'Amaan',
    time: '9:00',
    avatar: "assets/images/IMG_20200403_160459.jpg",
  ),
];
