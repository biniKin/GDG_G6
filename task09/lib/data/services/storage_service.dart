import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  Future<void> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
  }
}
