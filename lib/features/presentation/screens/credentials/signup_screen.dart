import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lategram/features/presentation/screens/credentials/login_screen.dart';
import 'package:lategram/features/presentation/widgets/button_widget.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mobileBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 45),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/lategram_icon.svg",
                height: 145,
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      child: Image.asset("assets/default_profile_pic.png",
                          color: primaryColor),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo_sharp,
                        color: accentColor,
                        size: 25.0,
                      ),
                    ),
                  )
                ],
              ),
              verSpace(25),
              const TextInputWidget(
                hintText: "Username",
                keyboardType: TextInputType.text,
              ),
              verSpace(15),
              const TextInputWidget(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              verSpace(15),
              const TextInputWidget(
                hintText: "Password",
                isPassword: true,
                keyboardType: TextInputType.text,
              ),
              verSpace(15),
              const TextInputWidget(
                hintText: "Bio",
                keyboardType: TextInputType.text,
              ),
              verSpace(25),
              ButtonWidget(
                color: accentColor,
                text: "Create Account",
                onTapCallback: () {},
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Already have an account? "),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
