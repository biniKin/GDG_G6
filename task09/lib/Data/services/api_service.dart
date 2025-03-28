import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task09/Data/model/user.dart';

class ApiService {
  Future<List<User>> fetchUsers() async {
    final String url = 'https://jsonplaceholder.typicode.com/users';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((data) => User.fromJson(data)).toList();
      } else {
        throw Exception("failed");
      }
    } catch (e) {
      throw Exception("No internet connection.");
    }
  }
}
