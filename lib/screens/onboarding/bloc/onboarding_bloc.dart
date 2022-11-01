import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial());
  int pageIndex = 0;
  final pageController = PageController(initialPage: 0);

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    //If SignUpButton pressed, add 1 to pageIndex, which changes page to SignUpScreen (@ pageIndex = 2)
    if (event is PageChangedEvent) {
      if (pageIndex == 3) {
        yield NextScreenState();
        return;
      }
      //Adds 1 to page index
      pageIndex += 1;
      //Changes page based on page index.
      pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );

      yield PageChangedState(counter: pageIndex);
    } else if (event is PageSwipedEvent) {
      pageIndex = event.index;

      yield PageChangedState(counter: pageIndex);
    }
  }
}
