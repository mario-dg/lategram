import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/screens/credentials/login_screen.dart';
import 'package:lategram/features/presentation/screens/main_screen/main_screen.dart';
import 'package:lategram/globals.dart';
import 'package:lategram/on_generate_rout.dart';

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
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginScreen(),
      },
    );
  }
}
