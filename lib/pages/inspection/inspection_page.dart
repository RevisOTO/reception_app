import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/registration_app_bar.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_authorization_phone.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_authorization_phone_code.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_done_form.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_inspection_wheels.dart';

import '../../blocs/auth/auth_bloc.dart';
 

class InspectionPage extends StatelessWidget {
  final Registration registration;
  const InspectionPage(this.registration, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<InspectionBloc, InspectionState>(
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
          
            return body(context);
        },
      ),
    );
  }

  Widget body(BuildContext context) =>  Scaffold(
    appBar: RegistrationAppBar(),
    body: StepDoneForm(registration),
    floatingActionButton: FloatingActionButton(
      elevation: 10.0,
      child: const Icon(Icons.arrow_forward),
      onPressed: () {
        // action on button press
      },
    ),
  
  );

  ScaffoldFeatureController buildErrorLayout(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OCURRIO UN ERROR'),
        ),
      );
}