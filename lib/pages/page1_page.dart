import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/bloc/user/user_bloc.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          final newState = state as UserActive;
          return Container(
            padding: const EdgeInsets.all(20),
            child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "General",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  ListTile(title: Text('Name: ${newState.user!.name}')),
                  ListTile(
                    title: Text('Age: ${newState.user!.age}'),
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
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.abc),
          onPressed: () => Navigator.of(context).pushNamed("page2")),
    );
  }
}
