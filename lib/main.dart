import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lategram/features/presentation/screens/credentials/login_screen.dart';
import 'package:lategram/features/presentation/screens/credentials/signup_screen.dart';
import 'package:lategram/features/presentation/screens/home/home_screen.dart';
import 'package:lategram/features/presentation/screens/main_screen/main_screen.dart';
import 'package:lategram/features/presentation/screens/search/search_screen.dart';
import 'package:lategram/globals.dart';

void main() {
  runApp(const Lategram());
}

class Lategram extends StatelessWidget {
  const Lategram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lategram - An Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: MainScreen(),
    );
  }
}
