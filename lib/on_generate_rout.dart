import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/screens/authentication/login_screen.dart';
import 'package:lategram/features/presentation/screens/authentication/signup_screen.dart';
import 'package:lategram/features/presentation/screens/page_not_found_screen.dart';
import 'package:lategram/features/presentation/screens/post/comment/comment_screen.dart';
import 'package:lategram/features/presentation/screens/post/update_post_screen.dart';
import 'package:lategram/features/presentation/screens/profile/edit_profile_screen.dart';
import 'package:lategram/globals.dart';

dynamic routeBuilder(Widget child) => MaterialPageRoute(builder: (_) => child);

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Pages.login:
        return routeBuilder(const LoginScreen());
      case Pages.signup:
        return routeBuilder(const SignupScreen());
      case Pages.editProfile:
        return routeBuilder(const EditProfileScreen());
      case Pages.updatePost:
        return routeBuilder(const UpdatePostScreen());
      case Pages.comment:
        return routeBuilder(const CommentScreen());
      default:
        return routeBuilder(const PageNotFoundScreen());
    }
  }
}
