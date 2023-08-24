import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';

import '../../blocs/auth/auth_bloc.dart';
 

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
            Navigator.of(context).pushNamedAndRemoveUntil('/inspection', arguments: Registration(),(r) => false);
          } else if (state is AuthInValidatedUser) {
            Navigator.of(context).pushNamedAndRemoveUntil('/login',(r) => false);
          }
        },
        builder: (context, state) {
          if(state is AuthInitial){
             BlocProvider.of<AuthBloc>(context).add(AuthUser());
          }
          if (state is AuthLoading) {
             return body(context,true);
          } else {
            return body(context,true);
          }
        },
      ),
    );
  }

  Widget body(BuildContext context, bool isLoading) => Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.white,
              child:
          const Image(width: 200,height: 200, image: AssetImage('assets/truck.gif'))),
          const SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Truck Track',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48.00,
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