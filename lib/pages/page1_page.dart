import 'package:flutter/material.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(title: Text('Name: ')),
              ListTile(
                title: Text('Age: '),
              ),
              Text(
                "Jobs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(title: Text('Name: ')),
              ListTile(
                title: Text('Age: '),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.abc),
          onPressed: () => Navigator.of(context).pushNamed("page2")),
    );
  }
}
