import 'package:dirty_fitness/core/const/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/const/color_constants.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorConstants.white,
        child: Stack(children: [
          _createMainData(context),
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) => Container(),
          ),
        ]),
      ),
    );
  }

  //Creates form
  Widget _createMainData(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _createTitle(),
            // const SizedBox(height: 50),
            // _createForm(),
            const SizedBox(height: 40),
            _createSignUpButton(),
            // Spacer(),
            const SizedBox(height: 40),
            _createHaveAccountText(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _createTitle() {
    return Text(
      TextConstants.signUp,
      style: TextStyle(
        color: ColorConstants.textBlack,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //Contains common input fields
  Widget _createForm() {
    return Container();
  }

  //Creates sign up button
  Widget _createSignUpButton() {
    // final bloc = BlocProvider.of<SignUpBloc>(context);
    return Container();
  }

  Widget _createHaveAccountText() {
    // final bloc = BlocProvider.of<SignUpBloc>(context);
    return Container();
  }
}
