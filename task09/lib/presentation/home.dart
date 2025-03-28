import 'package:flutter/material.dart';
import 'package:task09/Data/model/user.dart';
import 'package:task09/Data/repo/user_repo.dart';
import 'package:task09/Data/services/api_service.dart';
import 'package:task09/Data/services/storage_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late UserRepo repo;
  List<User> users = [];
  User? savedUser;
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    repo = UserRepo(apiService: ApiService(), storageService: StorageService());
    fetchUser();
    loadingUser();
  }

  Future<void> fetchUser() async {
    try {
      List<User> user = await repo.getUser();
      setState(() {
        users = user;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = "No Internet connection.";
      });
    }
  }

  void saveUser(User user) async {
    await repo.saveData(user);
    setState(() {
      savedUser = user;
    });
  }

  Future<void> loadingUser() async {
    User? user = await repo.loadingData();
    setState(() {
      savedUser = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API and DB integeration"),
        centerTitle: true,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : errorMessage.isNotEmpty
              ? Center(
                  child: Text(errorMessage),
                )
              : Column(
                  children: [
                    if (savedUser != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Last Saved: ${savedUser!.name} - ${savedUser!.email}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          User user = users[index];
                          return ListTile(
                            title: Text(user.name),
                            subtitle: Text(user.email),
                            trailing: TextButton(
                              onPressed: () => saveUser(user),
                              child: Text("Save"),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
    );
  }
}
