import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/steps/step_inspection_box_form.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StepInspectionBox extends StatefulWidget {
  final Registration registration;
  const StepInspectionBox(this.registration, {super.key});

  @override
  State<StepInspectionBox> createState() => _StepInspectionBoxState();
}

class _StepInspectionBoxState extends State<StepInspectionBox> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.inspectionBox),
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
            }
            else{
               BlocProvider.of<InspectionBloc>(context).add(StepCancelled());
            }
          },
          onStepContinue: () {
            if (_index <= 4) {
              setState(() {
                _index += 1;
              });
            }
            else{
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
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxLeftSide,
                type: StepFormType.leftSide,
                active: true,
                imagePath: 'assets/left_side.png',
              )),
            ),
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxBackSide),
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxBackSide,
                type: StepFormType.backSide,
                active: true,
                imagePath: 'assets/back_side.png',
              )),
            ),
              Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxRightSide),
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxRightSide,
                type: StepFormType.rightSide,
                active: true,
                imagePath: 'assets/right_side.png',
              )),
            ),
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxFrontSide),
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxFrontSide,
                type: StepFormType.frontSide,
                active: true,
                imagePath: 'assets/front_side.png',
              )),
            ),
          
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxFloor),
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxFloor,
                type: StepFormType.floorSide,
                active: true,
                imagePath: 'assets/floor_side.png',
              )),
            ),
            Step(
              title: Text(AppLocalizations.of(context)!.inspectionBoxRoof),
              content: StepInspectionBoxForm(StepBoxForm(
                title: AppLocalizations.of(context)!.inspectionBoxRoof,
                type: StepFormType.roofSide,
                active: true,
                imagePath: 'assets/roof_side.png',
              )),
            ),
          ],
        )
        
      
      ],
    ));
  }
}
