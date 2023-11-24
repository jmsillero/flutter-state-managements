import 'package:flutter/material.dart';

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
              onPressed: () {},
              color: Colors.amber,
              child: const Text('Create user'),
            ),
            MaterialButton(
              onPressed: () {},
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
