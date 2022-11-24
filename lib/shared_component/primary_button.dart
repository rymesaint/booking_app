import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}

class PrimaryButton extends StatelessWidget {
  final PrimaryButtonType type;
  final void Function()? onPressed;
  final String label;
  final double? width;

  const PrimaryButton({
    super.key,
    this.type = PrimaryButtonType.type1,
    required this.onPressed,
    required this.label,
    this.width = 78,
  });

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      height: 24,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: 32,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentMedium.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: 32,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentLarge.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }
}
