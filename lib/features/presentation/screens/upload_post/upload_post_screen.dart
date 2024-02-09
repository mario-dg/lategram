import 'package:flutter/material.dart';
import 'package:lategram/globals.dart';

class UploadPostScreen extends StatelessWidget {
  const UploadPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          'Upload a Post',
          style: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.upload,
              color: primaryColor,
              size: 55,
            ),
          ),
        ),
      ),
    );
  }
}
