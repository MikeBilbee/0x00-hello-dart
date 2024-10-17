//6-inheritance.dart
import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _user_password;

  User(
      {this.id,
      this.name,
      this.age,
      this.height,
      String? user_password,
      String? password}) // Make password optional
      : super(password: password ?? user_password ?? "") {
    // If both user_password and password are null, provide a default empty string
    this._user_password = user_password ?? password;
  }

  // Getter for user_password
  String get user_password {
    return _user_password ?? ""; // Null coalescing operator
  }

  // Setter for user_password
  set user_password(String newPassword) {
    _user_password = newPassword;
    super.password = newPassword; // Update the password in the parent class
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    String password = userJson['user_password'] ?? ""; // Get password from map

    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      password: password, // Pass password to the constructor
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name,  age: $age, height: $height, Password valid: ${isValid()})";
  }
}
