import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeDoneImage extends StatelessWidget {
  const WelcomeDoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.w16),
        child: Image.asset(ImageString.backdrop),
      ),
    );
  }
}
