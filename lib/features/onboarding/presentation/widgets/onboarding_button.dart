import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:booking_app/shared_component/primary_button.dart';
import 'package:booking_app/shared_component/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          label: 'Skip',
          type: SecondaryButtonType.type3,
          width: 147.5,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          label: 'Next',
          type: PrimaryButtonType.type3,
          width: 147.5,
        ),
      ],
    );
  }
}
