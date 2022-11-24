import 'package:bloc/bloc.dart';
import 'package:booking_app/features/onboarding/data/models/onboarding/onboarding.dart';
import 'package:booking_app/features/onboarding/src/image_string.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      emit(state.clone()..currentIndex = state.currentIndex + 1);
    }
  }

  void previous() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      emit(state.clone()..currentIndex = state.currentIndex - 1);
    }
  }

  void goTo(int index) {
    if (index >= 0 && state.currentIndex < state.onboardingList.length) {
      emit(state.clone()..currentIndex = index);
    }
  }

  void skip() {
    
  }
}
