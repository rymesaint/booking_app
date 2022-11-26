import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimension.w16),
      child: Container(
        height: 163.h,
        width: double.infinity,
        padding: EdgeInsets.all(AppDimension.w16),
        decoration: BoxDecoration(
          color: AppColor.ink06,
          borderRadius: BorderRadius.circular(AppDimension.w16),
          boxShadow: const [
            AppShadow.elevation3,
          ],
        ),
        child: Row(
          children: [
            Image.asset(ImageString.plants3),
            24.0.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Italy',
                    style:
                        AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
                  ),
                  8.0.height,
                  Text(
                    'Meet new roomies and find new adventures.',
                    style: AppFont.h4.copyWith(
                      height: 1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
