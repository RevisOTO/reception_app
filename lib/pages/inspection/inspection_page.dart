import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/registration_app_bar.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_authorization_phone.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_authorization_phone_code.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_crossborder_inspection_form.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_done_form.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_entry_inspection_form.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_exportation_inspection_form.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_inspection_box.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_inspection_wheels.dart';
import 'widgets/steps/step_selection_type_inspection.dart';

class InspectionPage extends StatelessWidget {
  final Registration registration;
  const InspectionPage(this.registration, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<InspectionBloc, InspectionState>(
        listener: (context, state) {
          /*if (state is AuthError) {
            buildErrorLayout(context);
          } else if (state is AuthValidatedUser) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/main', arguments: "fake user name", (r) => false);
          } else if (state is AuthInValidatedUser) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/login', (r) => false);
          }*/
        },
        builder: (context, state) {
          return body(context);
        },
      ),
    );
  }

  Widget body(BuildContext context) => Scaffold(
        appBar: const RegistrationAppBar(),
        body: BlocConsumer<InspectionBloc, InspectionState>(
          listener: (context, state) {
            /*if (state is InspectionError) {
              buildErrorLayout(state.message);
            }
            if (state is InspectionDone) {
              // buildDoneLayout();
              Future.delayed(const Duration(milliseconds: 1500), () {
                Navigator.pop(context, state.reception);
              });
            }*/
          },
          builder: (context, state) {
            if (state is InspectionInitial) {
              return StepSelectionTypeInspection(state.registration);
            } else if (state is InspectionStepFormNormalEntry) {
              return StepEntryInspectionForm(state.registration);
            } else if (state is InspectionStepFormCrossborderEntry) {
              return StepCrossborderInspectionForm(state.registration);
            } else if (state is InspectionStepFormExportationEntry) {
              return StepExportationInspectionForm(state.registration);
            } else if (state is InspectionStepFormExit) {
              return StepEntryInspectionForm(state.registration);
            } else if (state is InspectionStepBoxRevision) {
              return StepInspectionBox(state.registration);
            } else if (state is InspectionStepBoxWheels) {
              return StepInspectionWheels(state.registration);
            } else if (state is InspectionStepFormValidation) {
              return StepAuthorizationPhoneForm(state.registration);
            } else if (state is InspectionStepFormConfirmation) {
              return StepAuthorizationPhoneCodeForm(state.registration);
            } else if (state is InspectionStepDoneResults) {
              return StepDoneForm(state.registration);
            }
             else {
              return Container();
            }
          },
        )
       
      );

  ScaffoldFeatureController buildErrorLayout(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OCURRIO UN ERROR'),
        ),
      );
}
