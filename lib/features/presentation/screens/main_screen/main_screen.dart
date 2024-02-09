import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/screens/activity/activity_screen.dart';
import 'package:lategram/features/presentation/screens/add_post/add_post_screen.dart';
import 'package:lategram/features/presentation/screens/home/home_screen.dart';
import 'package:lategram/features/presentation/screens/profile/profile_screen.dart';
import 'package:lategram/features/presentation/screens/search/search_screen.dart';
import 'package:lategram/globals.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobileBackgroundColor,
        onTap: navigationTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, color: primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: primaryColor),
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddPostScreen(),
          ActivityScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
