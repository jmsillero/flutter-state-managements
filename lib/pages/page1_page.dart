import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/models/users.dart';
import 'package:state_managements/service/user_service.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: userService.existUser
          ? _Body(user: userService.user!)
          : const Center(
              child: Text('User does not exist!'),
            ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.abc),
          onPressed: () => Navigator.of(context).pushNamed("page2")),
    );
  }
}

class _Body extends StatelessWidget {
  final User user;
  const _Body({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "General",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        ListTile(title: Text('Name: ${user.name}')),
        ListTile(
          title: Text('Age: ${user.age}'),
        ),
        const Text(
          "Jobs",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        const ListTile(title: Text('Name: ')),
        const ListTile(
          title: Text('Age: '),
        )
      ]),
    );
  }
}
