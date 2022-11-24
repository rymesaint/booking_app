import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
      child: PageView.builder(
        onPageChanged: cubit.goTo,
        itemCount: cubit.state.onboardingList.length,
        itemBuilder: (context, index) =>
            Image.asset(cubit.state.onboardingList[index].image!),
      ),
    );
  }
}
