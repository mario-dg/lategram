import 'package:flutter/material.dart';
import 'package:lategram/globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lategram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColors,
      ),
      home: const Scaffold(body: Text("Let's build Lategram!")),
    );
  }
}
