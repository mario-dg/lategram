import 'package:flutter/material.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text("Edit Profile"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.done, color: accentColor, size: 28),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
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
              verSpace(10),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Change Profile Photo",
                  style: TextStyle(color: accentColor, fontSize: 16),
                ),
              ),
              verSpace(25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: TextInputWidget(
                  hintText: "Name",
                  keyboardType: TextInputType.text,
                ),
              ),
              verSpace(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: TextInputWidget(
                  hintText: "Username",
                  keyboardType: TextInputType.text,
                ),
              ),
              verSpace(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: TextInputWidget(
                  hintText: "Website",
                  keyboardType: TextInputType.text,
                ),
              ),
              verSpace(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: TextInputWidget(
                  hintText: "Bio",
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
