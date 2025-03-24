/*
  Data Model
  - Represents the structure of the raw data received from APIs or databases.
  - Its primary purpose is to convert jason data from api, database into object format.
  - At this point we didn't get any data from our api. yet we are just preparing a sturcture to that.
*/

class User {
  final String name;
  final String email;
  final int id;

  User({required this.name, required this.email, required this.id});

  //change the jason data to obj
  /*
    Map represents that the json has the structure of map and it's generic,
    the key will have string data type and the values will have dynamic type.
  */

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      id: json['id'],
    );
  }
}
