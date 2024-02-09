import 'package:flutter/material.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          'Username',
          style: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.menu,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "2",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verSpace(5),
                            const Text(
                              "Posts",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        horSpace(25),
                        Column(
                          children: [
                            const Text(
                              "54",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verSpace(5),
                            const Text(
                              "Followers",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        horSpace(25),
                        Column(
                          children: [
                            const Text(
                              "132",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verSpace(5),
                            const Text(
                              "Following",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verSpace(15),
              const Text(
                "Name",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verSpace(5),
              const Text(
                "Bio of the user goes here",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              verSpace(25),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 32,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                itemBuilder: (context, index) => Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
