import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/discover/presentation/cubit/discover_cubit.dart';
import 'package:booking_app/features/discover/presentation/pages/favorite_page.dart';
import 'package:booking_app/features/discover/presentation/pages/setting_page.dart';
import 'package:booking_app/features/discover/presentation/pages/trips_page.dart';
import 'package:booking_app/features/discover/presentation/widgets/bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});
  final ApiClient apiClient = ApiClient();

  @override
  Widget build(BuildContext context) {
    apiClient.get(Uri.parse(
        "https://6e0e6ca5-2620-4f1f-a96e-4256257bce39.mock.pstmn.io/api/v1/trips"));
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DiscoverCubit, DiscoverState>(
                builder: (context, state) {
              return state.selectedIndex == 0
                  ? const TripsPage()
                  : state.selectedIndex == 1
                      ? const FavoritePage()
                      : const SettingPage();
            }),
          ),
          const BottomMenu(),
        ],
      ),
    );
  }
}
