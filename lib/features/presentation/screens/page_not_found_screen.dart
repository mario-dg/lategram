import 'package:flutter/material.dart';
import 'package:lategram/globals.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text("Page Not Found"),
      ),
      body: const Center(
        child: Text("Page Not Found"),
      ),
    );
  }
}
