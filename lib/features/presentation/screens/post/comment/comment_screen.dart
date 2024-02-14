import 'package:flutter/material.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

import 'widgets/comment_header_widget.dart';
import 'widgets/comment_widget.dart';
import 'widgets/post_comment_widget.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "Comments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommentHeaderWidget(),

            Divider(color: secondaryColor.withOpacity(0.4)),
            verSpace(10),

            // Single Comment
            const CommentWidget(),
            const CommentWidget(),

            Flexible(child: Container()),

            const PostCommentWidget(),
          ],
        ),
      ),
    );
  }
}
