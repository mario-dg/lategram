import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/lategram_icon.svg",
          height: 92,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.messenger, color: primaryColor),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    horSpace(10),
                    const Text(
                      "Username",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.more_vert, color: primaryColor),
              ],
            ),
            verSpace(10),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              color: secondaryColor,
            ),
            verSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.heart,
                      color: primaryColor,
                    ),
                    horSpace(10),
                    const Icon(
                      FeatherIcons.messageCircle,
                      color: primaryColor,
                    ),
                    horSpace(10),
                    const Icon(
                      FeatherIcons.send,
                      color: primaryColor,
                    ),
                    horSpace(10),
                  ],
                ),
                const Icon(Icons.bookmark_border, color: primaryColor),
              ],
            ),
            verSpace(10),
            Row(
              children: [
                const Text(
                  "Username",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                horSpace(10),
                const Text(
                  "Some Description Here...",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            verSpace(10),
            const Text("View all comments",
                style: TextStyle(
                    color: secondaryColor, fontWeight: FontWeight.w400)),
            verSpace(2),
            const Text("09/02/2024",
                style: TextStyle(
                    color: secondaryColor, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
