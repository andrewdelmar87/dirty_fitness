import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';
import '../../../core/const/color_constants.dart';
import '../../../core/const/text_constants.dart';
import '../../common_widgets/fitness_button.dart';

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
            _createSignUpButton(context),
            // Spacer(),
            const SizedBox(height: 40),
            // _createHaveAccountText(),
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

  //Builds Fitness Button based on bloc
  Widget _createSignUpButton(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        buildWhen: (_, currState) =>
            currState is SignUpButtonEnableChangedState,
        builder: (context, state) {
          return FitnessButton(
            title: TextConstants.signUp,
            isEnabled: state is SignUpButtonEnableChangedState
                ? state.isEnabled
                : false,
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(SignUpTappedEvent());
            },
          );
        },
      ),
    );
  }

  Widget _createHaveAccountText() {
    // final bloc = BlocProvider.of<SignUpBloc>(context);
    return Container();
  }
}
