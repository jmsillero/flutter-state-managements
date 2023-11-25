import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/models/users.dart';
import 'package:state_managements/service/user_service.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context, listen: false);
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
                userService.user = User(
                  name: 'Juan Miguel',
                  age: 36,
                  jobs: [
                    "Computer programming",
                    "Flutter programmer",
                    "Android programmer",
                    "React native programer"
                  ],
                );
              },
              color: Colors.amber,
              child: const Text('Create user'),
            ),
            MaterialButton(
              onPressed: () => userService.updateAge(78),
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
