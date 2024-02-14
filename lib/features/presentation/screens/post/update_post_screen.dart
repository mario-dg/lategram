import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class UpdatePostScreen extends StatelessWidget {
  const UpdatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text("Edit Post"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.done, color: accentColor, size: 28),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  child: Image.asset("assets/default_profile_pic.png",
                      color: primaryColor),
                ),
              ),
              verSpace(5),
              const Text(
                "Username",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              verSpace(20),
              AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: IconButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(-20),
                          ),
                        ),
                        icon: const Icon(
                          Icons.edit,
                          color: accentColor,
                          size: 25.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              verSpace(25),
              const Text(
                "Update the description",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),
              verSpace(5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextInputWidget(
                  hintText: "Description",
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
