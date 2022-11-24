import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            state.onboardingList.length,
            (index) => index == state.currentIndex
                ? _activeIndicator(index)
                : _inactiveIndicator(index)),
      ),
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      width: 16,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inactiveIndicator(int index) {
    return Container(
      width: 6,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: AppColor.ink03,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
