import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lategram/globals.dart';

import '../post/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SvgPicture.asset(
              "assets/lategram_icon.svg",
              height: 96,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(FeatherIcons.send, color: primaryColor),
          )
        ],
      ),
      body: const PostWidget(),
    );
  }
}
