import 'package:flutter/material.dart';
import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/pages/inspection/widgets/check_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
 
class StepInspectionBoxForm extends StatelessWidget {
  final StepBoxForm stepForm;
  const StepInspectionBoxForm(this.stepForm,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Image.asset(
            stepForm.imagePath,
            height: 200,
            width: 400,
         ),
        CheckInput(title:stepForm.title, active: stepForm.active ?? false,callback: (value) => {

        },),
        MultilineTextInput(title: "Notas")
    ],
  );
  }

}