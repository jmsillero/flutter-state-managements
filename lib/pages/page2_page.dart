import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/bloc/user/user_bloc.dart';
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
                BlocProvider.of<UserBloc>(context, listen: false).add(
                    ActivateUser(
                        newUser: User(name: "JUAN MIGUEL", age: 36, jobs: [])));
              },
              color: Colors.amber,
              child: const Text('Create user'),
            ),
            MaterialButton(
              onPressed: () {
                 BlocProvider.of<UserBloc>(context, listen: false).add(UpdateAge(newAge: 90));
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
