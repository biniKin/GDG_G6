import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

/* 
  - Service layer is responsible for handdling external api calls, local database integeration
  - for separation concerns
  - only responsible for sending and receiving data
  - we will use our format changer here if our response is successful.
*/

class ApiService {
  Future<List<User>> fetchUser() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    //check the response
    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((item) => User.fromJson(item)).toList();
    } else {
      throw Exception("Failed to loade.");
    }
  }
}

//class ApiService {
//  Future<User> fetchUser() async {
//    final response = await http
//        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
//    if (response.statusCode == 200) {
//      return User.fromJson(jsonDecode(response.body));
//    } else {
//      throw Exception('Failed to load user');
//    }
//  }
//}
