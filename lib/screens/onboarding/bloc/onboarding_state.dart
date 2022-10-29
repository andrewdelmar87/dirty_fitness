part of 'onboarding_bloc.dart';

@immutable
abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}
//Page state
class PageChangedState extends OnboardingState {
  final int counter;

  PageChangedState({
    required this.counter,
  });
}
//Screen state
class NextScreenState extends OnboardingState {}