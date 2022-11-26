import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/discover/presentation/cubit/discover_cubit.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);
    return Container(
      height: 96.h,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: BlocBuilder<DiscoverCubit, DiscoverState>(
        builder: (context, state) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildItem(
              icon: Icons.location_on,
              label: 'Trips',
              onTap: () => cubit.changeIndex(0),
              isActive: cubit.state.selectedIndex == 0,
            ),
            _buildItem(
              icon: Icons.favorite,
              label: 'Favorites',
              onTap: () => cubit.changeIndex(1),
              isActive: cubit.state.selectedIndex == 1,
            ),
            _buildItem(
              icon: Icons.settings,
              label: 'Settings',
              onTap: () => cubit.changeIndex(2),
              isActive: cubit.state.selectedIndex == 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({
    void Function()? onTap,
    required String label,
    required IconData icon,
    bool isActive = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? null : AppColor.ink03,
          ),
          4.0.height,
          Text(
            label,
            style: AppFont.paragraphMedium.copyWith(
              color: isActive ? null : AppColor.ink03,
            ),
          ),
        ],
      ),
    );
  }
}
