import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  _openBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 130,
          decoration: BoxDecoration(
            color: mobileBackgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Text(
                  "More Options",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: secondaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(Pages.updatePost),
                  child: const Text(
                    "Update Post",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              verSpace(10),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  "Delete Post",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header Bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
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
            ),
            GestureDetector(
              onTap: () => {_openBottomModalSheet(context)},
              child: const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.more_horiz, color: primaryColor),
              ),
            ),
          ],
        ),
        verSpace(10),
        // Post Image
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: secondaryColor,
          ),
        ),
        verSpace(10),
        // Post Actions Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    FeatherIcons.heart,
                    color: primaryColor,
                  ),
                  horSpace(10),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Pages.comment),
                    child: const Icon(
                      FeatherIcons.messageCircle,
                      color: primaryColor,
                    ),
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
        ),
        verSpace(10),
        // Number of Likes
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("2 likes",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
        ),
        // Post Username and Description
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
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
        ),
        verSpace(10),
        // Comments
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("View all comments",
              style: TextStyle(
                  color: secondaryColor, fontWeight: FontWeight.w400)),
        ),
        verSpace(2),
        // Date
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("09/02/2024",
              style: TextStyle(
                  color: secondaryColor, fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
