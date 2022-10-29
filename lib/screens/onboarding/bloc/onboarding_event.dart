part of 'onboarding_bloc.dart';

@immutable
abstract class OnboardingEvent {}

//Circle button triggers PageChangedEvent
class PageChangedEvent extends OnboardingEvent {}

//Swiping triggers PageSwipedEvent
class PageSwipedEvent extends OnboardingEvent {
  final int index;

  PageSwipedEvent({required this.index});
}
