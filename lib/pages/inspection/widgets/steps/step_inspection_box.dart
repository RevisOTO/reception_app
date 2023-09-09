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
          controlsBuilder:
              (BuildContext context, ControlsDetails controlsDetails) {
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
            } else {
              BlocProvider.of<InspectionBloc>(context).add(StepCancelled());
            }
          },
          onStepContinue: () {
            if (_index <= 4) {
              setState(() {
                _index += 1;
              });
            } else {
              BlocProvider.of<InspectionBloc>(context).add(StepContinue());
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: generateSteps(),
        )
      ],
    ));
  }

  List<Step> generateSteps() {
    List<Step> steps = [];
    var leftSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.leftSideBox.toString());
    var rightSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.rightSideBox.toString());
    var frontSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.frontSideBox.toString());
    var backSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.backSideBox.toString());
    var floorSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.floorSideBox.toString());
    var roofSideBox = widget.registration.inspectionStep
        ?.firstWhere((x) => x.type == StepFormType.roofSideBox.toString());

    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxLeftSide),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxLeftSide,
        type: StepFormType.leftSideBox,
        inspectionBox: leftSideBox?.inspectionBox,
        imagePath: 'assets/left_side.png',
      )),
    ));
    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxBackSide),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxLeftSide,
        type: StepFormType.backSideBox,
        inspectionBox: backSideBox?.inspectionBox,
        imagePath: 'assets/back_side.png',
      )),
    ));
    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxRightSide),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxRightSide,
        type: StepFormType.rightSideBox,
        inspectionBox: rightSideBox?.inspectionBox,
        imagePath: 'assets/right_side.png',
      )),
    ));
    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxFrontSide),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxFrontSide,
        type: StepFormType.frontSideBox,
        inspectionBox: frontSideBox?.inspectionBox,
        imagePath: 'assets/front_side.png',
      )),
    ));

    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxFloor),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxFloor,
        type: StepFormType.floorSideBox,
        inspectionBox: floorSideBox?.inspectionBox,
        imagePath: 'assets/floor_side.png',
      )),
    ));
    steps.add(Step(
      title: Text(AppLocalizations.of(context)!.inspectionBoxRoof),
      content: StepInspectionBoxForm(StepBoxForm(
        title: AppLocalizations.of(context)!.inspectionBoxRoof,
        type: StepFormType.roofSideBox,
        inspectionBox: roofSideBox?.inspectionBox,
        imagePath: 'assets/roof_side.png',
      )),
    ));

    return steps;
  }
}
