class ChatroomModel {
  final String chatroomId, createdDate;
  final List<String> users;

  ChatroomModel.fromJson(Map<String, dynamic> json)
      : chatroomId = json['chatroomId'],
        createdDate = json['createdDate'],
        users = json['users'];
}
