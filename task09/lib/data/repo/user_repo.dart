import '../services/api_service.dart';
import '../services/storage_service.dart';
import '../models/user.dart';

/* 
 - Acts as a bridge between the domain layer and the data sources 
 - It is used to display the data in the UI.
*/

class UserRepository {
  final ApiService apiService;

  UserRepository(this.apiService);

  Future<List<User>> getAllUsers() async {
    return await apiService.fetchUser();
  }
}

//class UserRepository {
//  final ApiService apiService = ApiService();
//  final StorageService storageService = StorageService();
//
//  Future<User> getUser() => apiService.fetchUser();
//  Future<void> saveUserName(String name) => storageService.saveUserName(name);
//}
//
