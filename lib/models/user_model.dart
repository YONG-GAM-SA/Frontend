class UserModel {
  final String id, email, userName, nickname, password, birthDate;

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        userName = json['userName'],
        nickname = json['nickname'],
        password = json['password'],
        birthDate = json['birthDate'];
}
