import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(ImageString.giantPhone),
    );
  }
}
