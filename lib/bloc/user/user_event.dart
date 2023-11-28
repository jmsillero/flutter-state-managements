part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class ActivateUser extends UserEvent {
  final User newUser;

  ActivateUser({required this.newUser});
}

class UpdateAge extends UserEvent {
  final int newAge;

  UpdateAge({required this.newAge});
}
