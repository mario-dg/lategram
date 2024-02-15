import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/screens/activity/activity_screen.dart';
import 'package:lategram/features/presentation/screens/home/home_screen.dart';
import 'package:lategram/features/presentation/screens/profile/profile_screen.dart';
import 'package:lategram/features/presentation/screens/search/search_screen.dart';
import 'package:lategram/features/presentation/screens/post/upload_post_screen.dart';

const mobileBackgroundColor = Color.fromRGBO(25, 25, 25, 255);
const webBackgroundColor = Color.fromRGBO(45, 45, 45, 255);
const mobileSearchColor = Color.fromRGBO(55, 55, 55, 255);

const primaryColor = Colors.white;
const secondaryColor = Colors.grey;
const accentColor = Colors.blueAccent;

const borderRadius = 8.0;

const mainScreenPages = [
  HomeScreen(),
  SearchScreen(),
  UploadPostScreen(),
  ActivityScreen(),
  ProfileScreen(),
];

class Pages {
  static const String editProfile = "editProfile";
  static const String updatePost = "updatePost";
  static const String comment = "comment";
  static const String login = "login";
  static const String signup = "signup";
}
