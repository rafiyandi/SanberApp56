class UsersModel {
  final int id;
  final String email;
  final String fistName;
  final String lastName;
  final String avatar;

  UsersModel(
      {required this.id,
      required this.email,
      required this.fistName,
      required this.avatar,
      required this.lastName});

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
      id: json['id'],
      email: json['email'],
      fistName: json['first_name'],
      avatar: json['avatar'],
      lastName: json['last_name']);
}
