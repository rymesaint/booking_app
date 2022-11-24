import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:booking_app/features/onboarding/presentation/widgets/onboarding_widget.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            const OnBoardingImage(),
            32.0.height,
            const OnBoardingTitle(),
            45.0.height,
            const OnBoardingIndicator(),
            53.0.height,
            const OnBoardingButton(),
            82.9.height,
          ],
        ),
      ),
    );
  }
}
