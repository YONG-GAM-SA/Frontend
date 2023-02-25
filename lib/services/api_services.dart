import 'dart:convert';

import 'package:mapchatfe/models/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<UserModel> getUser() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw Error();
  }
}
