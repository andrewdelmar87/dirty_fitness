part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class OnTextChangedEvent extends SignUpEvent {}

class SignUpTappedEvent extends SignUpEvent {}

class SignInTappedEvent extends SignUpEvent {}
