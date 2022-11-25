import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:flutter/material.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _header(),
          _otherMatchList(),
        ],
      ),
    );
  }

  Widget _otherMatchList() {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: AppDimension.h24),
        itemBuilder: (context, index) => _otherMatchItem(context),
        itemCount: 3,
      ),
    );
  }

  Widget _otherMatchItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimension.w16,
        right: AppDimension.w16,
        bottom: AppDimension.h16,
      ),
      margin: EdgeInsets.only(
        right: AppDimension.w16,
        left: AppDimension.w16,
      ),
      width: (MediaQuery.of(context).size.width / 2) - AppDimension.w38,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimension.w16),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(ImageString.plants1),
          ),
          Row(
            children: [
              Text(
                'Gary',
                style: AppFont.paragraphLargeBold.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                '\$500',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimension.h24,
        left: AppDimension.w16,
        right: AppDimension.w16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Other Matches',
            style: AppFont.h3,
          ),
        ],
      ),
    );
  }
}
