import 'package:flutter/material.dart';
import 'package:state_managements/models/users.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;

  set user(User? newUser) {
    _user = newUser;
    notifyListeners();
  }

  bool get existUser => _user != null;

  void updateAge(int age) {
    _user = _user?.copyWith(age: age);
    notifyListeners();
  }
}
