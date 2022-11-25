import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  const InputText({
    super.key,
    required this.label,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimension.h40,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: AppFont.componentMedium,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: AppDimension.w16),
        ),
      ),
    );
  }
}
