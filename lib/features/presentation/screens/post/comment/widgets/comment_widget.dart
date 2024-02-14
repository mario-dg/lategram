import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    super.key,
  });

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool _isUserReplying = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Image.asset(
                "assets/default_profile_pic.png",
                color: primaryColor,
              ),
            ),
          ),
          horSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Commenter Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const Text(
                  "This is a very nice comment",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: primaryColor,
                  ),
                ),
                verSpace(5),
                Row(
                  children: [
                    const Text(
                      "02/14/2024",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: secondaryColor,
                      ),
                    ),
                    horSpace(15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isUserReplying = !_isUserReplying;
                        });
                      },
                      child: const Text(
                        "Reply",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    horSpace(15),
                    const Text(
                      "View Replies",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
                _isUserReplying ? verSpace(10) : verSpace(0),
                _isUserReplying
                    ? SizedBox(
                        height: 35,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: TextInputWidget(
                                hintText: "Reply to Commenter Name",
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(Icons.arrow_upward,
                                  size: 28, color: accentColor),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(width: 0, height: 0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_outline,
                  color: secondaryColor,
                  size: 15,
                ),
                verSpace(5),
                const Text(
                  "234",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
