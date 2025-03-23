import 'dart:convert';

import 'package:my_project/lab2/logic/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IUserStorageService {
  Future<void> saveUser(User user);

  Future<User?> getUser(String email);
}

class UserStorageService implements IUserStorageService {
  @override
  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(user.email, jsonEncode(user.toJson()));
  }

  @override
  Future<User?> getUser(String email) async {
    final prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString(email);
    if (userString != null) {
      final Map<String, dynamic> userMap =
      jsonDecode(userString) as Map<String, dynamic>;
      return User.fromJson(userMap);
    }
    return null;
  }
}
