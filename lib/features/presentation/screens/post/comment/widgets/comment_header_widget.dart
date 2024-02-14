import 'package:flutter/material.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class CommentHeaderWidget extends StatelessWidget {
  const CommentHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(7),
                child: Image.asset("assets/default_profile_pic.png",
                    color: primaryColor),
              ),
            ),
            horSpace(10),
            const Text(
              "Poster Name",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            )
          ],
        ),
        verSpace(10),
        const Text(
          "This is the description of the post.",
          style: TextStyle(color: primaryColor),
        ),
      ]),
    );
  }
}
