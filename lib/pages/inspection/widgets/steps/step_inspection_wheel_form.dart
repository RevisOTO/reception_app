import 'package:flutter/material.dart';
import 'package:reception_app/data/modelsView/step_wheel_form.dart';
import 'package:reception_app/pages/inspection/widgets/check_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StepInspectionWheelForm extends StatelessWidget {
  final StepWheelForm stepForm;
  const StepInspectionWheelForm(this.stepForm,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        CheckInput(title:AppLocalizations.of(context)!.inspectionWheelsFrontExterior, active: stepForm.frontExterior ?? false,callback: (value) => {

        },),
        CheckInput(title:AppLocalizations.of(context)!.inspectionWheelsFrontInterior, active: stepForm.frontExterior ?? false,callback: (value) => {

        },),
        CheckInput(title:AppLocalizations.of(context)!.inspectionWheelsBackwardExterior, active: stepForm.backwardExterior ?? false,callback: (value) => {

        },),
        CheckInput(title:AppLocalizations.of(context)!.inspectionWheelsBackwardInterior, active: stepForm.backwardInterior ?? false,callback: (value) => {

        },),
        MultilineTextInput(title: "Notas")
    ],
  );
  }

}