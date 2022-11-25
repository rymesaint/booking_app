import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}

class SecondaryButton extends StatelessWidget {
  final SecondaryButtonType type;
  final void Function()? onPressed;
  final Color? backroundColor;
  final String label;
  final double? width;

  const SecondaryButton({
    super.key,
    this.type = SecondaryButtonType.type1,
    required this.onPressed,
    required this.label,
    this.backroundColor = AppColor.ink06,
    this.width = 78,
  });

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      height: 24.h,
      width: width?.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: backroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentSmall,
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: 32.h,
      width: width?.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: backroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentMedium,
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: 40.h,
      width: width?.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: backroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: AppFont.componentLarge,
        ),
      ),
    );
  }
}
