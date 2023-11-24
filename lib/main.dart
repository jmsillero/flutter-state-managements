import 'package:flutter/material.dart';
import 'package:state_managements/pages/page1_page.dart';
import 'package:state_managements/pages/page2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "page1",
      routes: {
        'page1' : (_) =>const Page1Page(),
        'page2' : (_) =>const Page2Page(),
      },
    );
  }
}

