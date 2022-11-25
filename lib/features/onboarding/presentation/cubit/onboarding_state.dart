part of 'onboarding_cubit.dart';

// ignore: must_be_immutable
class OnboardingState extends Equatable {
  final PageController pageController = PageController();
  int currentIndex = 0;
  OnboardingState();

  final List<Onboarding> onboardingList = [
    const Onboarding(
        title: 'Find a Roomie!',
        description:
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
        image: ImageString.standing),
    const Onboarding(
        title: 'Your Roommate Finder',
        description:
            'Hey you, looking for a roommate? We\'ve helped millions across the nation find their perfect match... and you\'re next!',
        image: ImageString.standing2),
    const Onboarding(
        title: 'Find Your Match!',
        description:
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
        image: ImageString.standing1),
  ];

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }

  @override
  List<Object> get props => [
        onboardingList,
        currentIndex,
        clone(),
        pageController,
      ];
}
