part of 'sign_in_bloc.dart';

abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {}

class SignInButtonEnableChangedState extends SignInState {
  final bool isEnabled;

  SignInButtonEnableChangedState({
    required this.isEnabled,
  });
}

class ShowErrorState extends SignInState {}

class NextForgotPasswordPageState extends SignInState {}

class NextSignUpPageState extends SignInState {}

class NextTabBarSignInPageState extends SignInState {}

class ErrorSignInState extends SignInState {
  final String message;

  ErrorSignInState({
    required this.message,
  });
}

class LoadingState extends SignInState {}
