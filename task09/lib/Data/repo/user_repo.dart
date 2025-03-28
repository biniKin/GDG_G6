import 'package:task09/Data/model/user.dart';
import 'package:task09/Data/services/api_service.dart';
import 'package:task09/Data/services/storage_service.dart';

class UserRepo {
  final ApiService apiService;
  final StorageService storageService;

  UserRepo({required this.apiService, required this.storageService});

  //for fetch user
  Future<List<User>> getUser() async {
    return apiService.fetchUsers();
  }

  Future<void> saveData(User user) async {
    await storageService.saveUser(user);
  }

  Future<User?> loadingData() async {
    return await storageService.loadingUser();
  }
}
