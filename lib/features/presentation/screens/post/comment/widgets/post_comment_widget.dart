import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class PostCommentWidget extends StatelessWidget {
  const PostCommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Container(
            padding: const EdgeInsets.all(7),
            child: Image.asset("assets/default_profile_pic.png",
                color: primaryColor),
          ),
        ),
        horSpace(10),
        const Expanded(
          child: TextInputWidget(
            hintText: "Add a comment for Poster Name",
            keyboardType: TextInputType.text,
          ),
        ),
        horSpace(10),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.arrow_upward, size: 28, color: accentColor),
        ),
      ],
    );
  }
}
