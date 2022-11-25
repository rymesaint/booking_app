import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:booking_app/features/welcome/presentation/widgets/welcome_button.dart';
import 'package:booking_app/features/welcome/presentation/widgets/welcome_image.dart';
import 'package:booking_app/features/welcome/presentation/widgets/welcome_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentBlue,
      body: Column(
        children: const [
          WelcomeTitle(),
          WelcomeButton(),
          WelcomeImage(),
        ],
      ),
    );
  }
}
