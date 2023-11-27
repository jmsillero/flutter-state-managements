import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/bloc/users/cubit/user_cubit.dart';
import 'package:state_managements/models/users.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                context
                    .read<UserCubit>()
                    .selectUser(User(name: "Juan Miguel", age: 36, jobs: []));
              },
              color: Colors.amber,
              child: const Text('Create user'),
            ),
            MaterialButton(
              onPressed: () {
                context.read<UserCubit>().setAge(80);
              },
              color: Colors.amber,
              child: const Text('Update Age'),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.amber,
              child: const Text('Add Job'),
            )
          ],
        ),
      ),
    );
  }
}
