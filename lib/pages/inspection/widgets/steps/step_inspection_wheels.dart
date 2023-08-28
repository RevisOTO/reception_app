import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/modelsView/step_wheel_form.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_inspection_wheel_form.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StepInspectionWheels extends StatefulWidget {
  final Registration registration;
  const StepInspectionWheels(this.registration, {super.key});

  @override
  State<StepInspectionWheels> createState() => _StepInspectionWheelsState();
}

class _StepInspectionWheelsState extends State<StepInspectionWheels> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.inspectionWheels),
        Stepper(
          physics: const ClampingScrollPhysics(),
         controlsBuilder: (BuildContext context, ControlsDetails controlsDetails) {
        return Row(
          children: <Widget>[
            FilledButton(
              onPressed: controlsDetails.onStepContinue,
              child: Text(AppLocalizations.of(context)!.next),
            ),
            TextButton(
              onPressed: controlsDetails.onStepCancel,
              child: Text(AppLocalizations.of(context)!.close),
            ),
          ],
        );
      },
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }else{
               BlocProvider.of<InspectionBloc>(context).add(StepCancelled());
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _index += 1;
              });
            }else{
               BlocProvider.of<InspectionBloc>(context).add(StepContinue());
            }
          },
          onStepTapped: (int index) {
         
            setState(() {
              _index = index;
            });
          },
          steps: <Step>[
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxLeftSide),
              content: StepInspectionWheelForm(StepWheelForm(
                type: StepWheeleFormType.leftSide,
              )),
            ),
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxRightSide),
              content: StepInspectionWheelForm(StepWheelForm(
                type: StepWheeleFormType.leftSide,
              )),
            ),
          ],
        )
        
      ],
    ));
  }
}
