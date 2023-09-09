import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/modelsView/step_wheel_form.dart';
import 'package:reception_app/pages/inspection/widgets/check_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StepInspectionWheelForm extends StatelessWidget {
  final StepWheelForm stepForm;
  final TextEditingController controllerNotes = TextEditingController(text: "");
  StepInspectionWheelForm(this.stepForm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckInput(
          title: AppLocalizations.of(context)!.inspectionWheelsFrontExterior,
          active: stepForm.inspectionWheel?.checkFrontExterior ?? false,
          callback: (value) {
             stepForm.inspectionWheel?.checkFrontExterior = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionWheel(stepForm));
          },
        ),
        CheckInput(
          title: AppLocalizations.of(context)!.inspectionWheelsFrontInterior,
          active: stepForm.inspectionWheel?.checkFrontInterior ?? false,
          callback: (value)  {
            stepForm.inspectionWheel?.checkFrontInterior = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionWheel(stepForm));
          },
        ),
        CheckInput(
          title: AppLocalizations.of(context)!.inspectionWheelsBackwardExterior,
          active: stepForm.inspectionWheel?.checkBackwardExterior ?? false,
          callback: (value) {
            stepForm.inspectionWheel?.checkBackwardExterior = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionWheel(stepForm));
          },
        ),
        CheckInput(
          title: AppLocalizations.of(context)!.inspectionWheelsBackwardInterior,
          active: stepForm.inspectionWheel?.checkBackwardInterior ?? false,
          callback: (value) {
            stepForm.inspectionWheel?.checkBackwardInterior = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionWheel(stepForm));
          },
        ),
        MultilineTextInput(title: "Notas",controller: controllerNotes,value:stepForm.inspectionWheel?.notes, callback: (value) {
            stepForm.inspectionWheel?.notes = value;
             BlocProvider.of<InspectionBloc>(context).add(StepUpdateInspectionWheel(stepForm));
          },)
      ],
    );
  }
}
