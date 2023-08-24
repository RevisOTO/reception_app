import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../widgets/loader.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildErrorLayout(context);
          } else if (state is AuthValidatedUser) {
            Navigator.of(context).pushNamedAndRemoveUntil('/main', arguments: "fake user name",(r) => false);
          } else if (state is AuthInValidatedUser) {
            Navigator.of(context).pushNamedAndRemoveUntil('/login',(r) => false);
          }
        },
        builder: (context, state) {
          if(state is AuthInitial){
             BlocProvider.of<AuthBloc>(context).add(AuthUser());
          }
          if (state is AuthLoading) {
            return LoadingWidget(child: body(context));
          } else {
            return body(context);
          }
        },
      ),
    );
  }

  Widget body(BuildContext context) => Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.white,
              child:
                  const Image(image: AssetImage('assets/logo_transferr.png'))),
          const SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Reception',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.00,
                    color: Theme.of(context).primaryColor)),
          ])),
          const Text(
            'by Transfer Inc.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ));

  ScaffoldFeatureController buildErrorLayout(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter username/password!'),
        ),
      );
}