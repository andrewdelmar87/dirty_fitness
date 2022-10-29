import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../core/service/auth_service.dart';
import '../../../core/service/validation_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial());

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isButtonEnabled = false;

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    //Checls if text field value changes
    if (event is OnTextChangedEvent) {
      //Toggles sign up button
      if (isButtonEnabled != checkIfSignUpButtonEnabled()) {
        //Sign up button toggles & Sign up button state changes
        isButtonEnabled = checkIfSignUpButtonEnabled();
        yield SignUpButtonEnableChangedState(isEnabled: isButtonEnabled);
      }
      //Checks when Sign up button tapped
    } else if (event is SignUpTappedEvent) {
      //If text field validators = true
      if (checkValidatorsOfTextField()) {
        try {
          yield LoadingState();
          //Passes email, pw, username to auth signUp
          await AuthService.signUp(emailController.text,
              passwordController.text, userNameController.text);
          yield NextTabBarPageState();
          print("Go to the next page");
        } catch (e) {
          yield ErrorState(message: e.toString());
        }
      } else {
        yield ShowErrorState();
      }
      //If Sign in tab tapped
    } else if (event is SignInTappedEvent) {
      yield NextSignInPageState();
    }
  }

  //Checks if text field are not empty
  bool checkIfSignUpButtonEnabled() {
    return userNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;
  }

  bool checkValidatorsOfTextField() {
    return ValidationService.username(userNameController.text) &&
        ValidationService.email(emailController.text) &&
        ValidationService.password(passwordController.text) &&
        ValidationService.confirmPassword(
            passwordController.text, confirmPasswordController.text);
  }
}
