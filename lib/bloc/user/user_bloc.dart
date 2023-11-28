import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_managements/models/users.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitial()) {
    on<ActivateUser>((event, emit) => emit(UserActive(user: event.newUser)));

    on<UpdateAge>((event, emit) {
      if (state.user == null) return;

      final newUser = state.user!.copyWith(age: event.newAge);
      emit(UserActive(user: newUser));
    });
  }
}
