import 'package:flutter/material.dart';
import 'package:task09/data/models/user.dart';
import 'package:task09/data/repo/user_repo.dart';
import 'package:task09/data/services/api_service.dart';

class UsersScreen extends StatefulWidget {
  @override
  UsersScreenState createState() => UsersScreenState();
}

class UsersScreenState extends State<UsersScreen> {
  late Future<List<User>> futureUsers;
  late UserRepository userRepository;

  @override
  void initState() {
    super.initState();
    userRepository = UserRepository(ApiService()); // Inject API Service
    futureUsers = userRepository.getAllUsers(); // Fetch users
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users List")),
      body: FutureBuilder<List<User>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No users found"));
          }

          List<User> users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text(users[index].id.toString())),
                title: Text(users[index].name),
                subtitle: Text(users[index].email),
                trailing: ElevatedButton(onPressed: () {}, child: Text("save")),
              );
            },
          );
        },
      ),
    );
  }
}
