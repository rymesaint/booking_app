import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/welcome_done/presentation/cubit/welcome_done_cubit.dart';
import 'package:booking_app/features/welcome_done/presentation/widgets/welcome_done_button.dart';
import 'package:booking_app/features/welcome_done/presentation/widgets/welcome_done_image.dart';
import 'package:booking_app/features/welcome_done/presentation/widgets/welcome_done_title.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeDoneCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          102.0.height,
          const WelcomeDoneImage(),
          24.0.height,
          const WelcomeDoneTitle(),
          24.0.height,
          const WelcomeDoneButton(),
          95.0.height,
        ],
      ),
    );
  }
}
