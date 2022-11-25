import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: AppDimension.h16),
        itemBuilder: (context, index) => _roomiesItem(),
        itemCount: 3,
      ),
    );
  }

  Widget _roomiesItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimension.w16),
      child: Container(
        height: 72.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: AppDimension.w16, vertical: AppDimension.h8),
        margin: EdgeInsets.only(bottom: AppDimension.h16),
        decoration: BoxDecoration(
          color: AppColor.ink06,
          borderRadius: BorderRadius.circular(AppDimension.w8),
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: Colors.grey,
                ),
                CircleAvatar(
                  radius: 26.r,
                  backgroundImage: const AssetImage(ImageString.avatar),
                  backgroundColor: AppColor.ink06,
                ),
              ],
            ),
            12.0.width,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Courtney Henry',
                    style: AppFont.paragraphMediumBold,
                  ),
                  Text(
                    'Viet Nam',
                    style:
                        AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
                  ),
                ],
              ),
            ),
            const IconButton(onPressed: null, icon: Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimension.h60,
        left: AppDimension.w16,
        right: AppDimension.w16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Your Roomies',
            style: AppFont.h3,
          ),
          const Expanded(child: SizedBox()),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: AppColor.ink02,
              )),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.star,
                color: AppColor.ink02,
              )),
        ],
      ),
    );
  }
}
