import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lategram/features/presentation/widgets/button_widget.dart';
import 'package:lategram/features/presentation/widgets/text_input_widget.dart';
import 'package:lategram/features/utils/helpers.dart';
import 'package:lategram/globals.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              verSpace(25),
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
              verSpace(25),
              ButtonWidget(
                color: accentColor,
                text: "Login",
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
                    child: const Text("Don't have an account? "),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                        Pages.signup, (route) => false),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Signup",
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
