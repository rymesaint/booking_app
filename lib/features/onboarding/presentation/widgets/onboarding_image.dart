import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
        child: BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) => PageView.builder(
        onPageChanged: cubit.goTo,
        controller: state.pageController,
        itemCount: state.onboardingList.length,
        itemBuilder: (context, index) =>
            Image.asset(state.onboardingList[index].image!),
      ),
    ));
  }
}
