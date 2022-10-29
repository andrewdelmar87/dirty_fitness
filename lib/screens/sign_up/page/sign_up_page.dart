import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';
import '../widget/sign_up_content.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<SignUpBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignUpBloc(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return SignUpContent();
        },
        buildWhen: (_, currState) => currState is SignUpInitial,
        listener: (_, currState) =>
            currState is NextTabBarPageState ||
            currState is NextSignInPageState ||
            currState is ErrorState,
        listenWhen: (context, state) {
          if (state is NextTabBarPageState) {
            // Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(builder: (_) => TabBarPage()));
          } else if (state is NextSignInPageState) {
            // Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(builder: (_) => SignInPage()));
          } else if (state is ErrorState) {
            // ScaffoldMessenger.of(context)
            //     .showSnackBar(SnackBar(content: Text(state.message)));
          }
          throw {
            Container(
              child: Text('Test'),
            )
          };
        },
      ),
    );
  }
}
