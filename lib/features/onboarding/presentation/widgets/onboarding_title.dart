import 'package:booking_app/config/config.dart';
import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            cubit.state.onboardingList[cubit.state.currentIndex].title ?? '',
            style: AppFont.h3,
            textAlign: TextAlign.center,
          ),
          8.0.height,
          Text(
            cubit.state.onboardingList[cubit.state.currentIndex].description ??
                '',
            style: AppFont.paragraphMedium,
            textAlign: TextAlign.center,
          ),
        ],
      );
    });
  }
}
