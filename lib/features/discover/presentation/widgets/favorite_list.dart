import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _itemList(),
        itemCount: 6,
      ),
    );
  }

  Widget _itemList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimension.w16,
        vertical: AppDimension.h8,
      ),
      child: Container(
        width: double.infinity,
        height: 76.h,
        padding: EdgeInsets.all(AppDimension.w16),
        decoration: BoxDecoration(
          color: AppColor.ink06,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            AppShadow.elevation3,
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Summer Roomies',
                  style: AppFont.paragraphMediumBold,
                ),
                4.0.height,
                Text(
                  'Carribean',
                  style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColor.ink01,
            ),
          ],
        ),
      ),
    );
  }
}
