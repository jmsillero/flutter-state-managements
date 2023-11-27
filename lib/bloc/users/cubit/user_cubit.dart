import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/models/users.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(UserActive(user: user));
  }

  void setAge(int age) {
    final user = (state as UserActive).user;
    final newUser = user.copyWith(age: age);
    emit(UserActive(user: newUser));
  }
}
