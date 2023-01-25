class UserModel {
  final name;
  final message;
  final time;
  final avater;
  UserModel({this.name, this.message, this.time, this.avater});
}

List<UserModel> userModel = [
  UserModel(
    name: 'John',
    message: 'how are you?',
    time: '10:20',
    avater: "assets/images/5a4d40c72f96b2446c3787248be44351.jpg",
  ),
  UserModel(
    name: 'Doe',
    message: 'Tomorrow we will go!',
    time: '7:30',
    avater: "assets/images/ced70a7c0b22478b092b1c96c268ca08.jpg",
  ),
  UserModel(
    name: 'Ahsan',
    message: 'Kal chelen ge!',
    time: '11:10',
    avater: "assets/images/IMG_20200226_143829.jpg",
  ),
  UserModel(
    name: 'Amaan',
    message: 'Okay',
    time: '9:00',
    avater: "assets/images/IMG_20200403_160459.jpg",
  ),
  UserModel(
    name: 'Raphad',
    message: 'Okay',
    time: '12:00',
    avater: "assets/images/IMG_20200403_160125.jpg",
  ),
];
