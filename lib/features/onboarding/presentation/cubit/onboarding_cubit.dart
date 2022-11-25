import 'package:bloc/bloc.dart';
import 'package:booking_app/features/onboarding/data/models/onboarding/onboarding.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:booking_app/features/welcome/presentation/pages/welcome_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      if (state.pageController.position.isScrollingNotifier.value == false) {
        state.pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      }
      emit(state.clone()..currentIndex = state.currentIndex + 1);
    }
  }

  void previous() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      state.pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      emit(state.clone()..currentIndex = state.currentIndex - 1);
    }
  }

  void goTo(int index) {
    if (index >= 0 && state.currentIndex < state.onboardingList.length) {
      // state.pageController.animateToPage(index,
      //     curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
      emit(state.clone()..currentIndex = index);
    }
  }

  void skip(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const WelcomePage(),
    ));
  }
}
