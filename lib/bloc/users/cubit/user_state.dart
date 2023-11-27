// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_cubit.dart';

sealed class UserState {}

final class UserInitial extends UserState {
  final userExist = false;
}

class UserActive extends UserState {
  final userExist = true;
  final User user;

  UserActive({
    required this.user,
  });
}
