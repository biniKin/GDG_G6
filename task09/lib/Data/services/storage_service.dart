import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task09/Data/model/user.dart';

class StorageService {
  Future<void> saveUser(User user) async {
    final data = await SharedPreferences.getInstance();
    String userdata = jsonEncode(user.toJson());
    await data.setString(
      'save_user',
      userdata,
    );
  }

  Future<User?> loadingUser() async {
    final data = await SharedPreferences.getInstance();
    String? res = data.getString('save_user');
    if (res != null) {
      return User.fromJson(jsonDecode(res));
    }
    return null;
  }
}
