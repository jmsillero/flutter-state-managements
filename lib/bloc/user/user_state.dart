part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final bool userExist = false;
  final User? user;

  const UserState({this.user});
}

final class UserInitial extends UserState {
  const UserInitial({super.user});
}

final class UserActive extends UserState {
  const UserActive({required super.user});
}
