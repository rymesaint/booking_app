import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class FavoriteTitle extends StatelessWidget {
  const FavoriteTitle({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Favorites',
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
            ),
          ),
        ],
      ),
    );
  }
}
