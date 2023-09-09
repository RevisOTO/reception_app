import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/pages/inspection/widgets/check_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
 
class StepInspectionBoxForm extends StatelessWidget {
  final StepBoxForm stepForm;
  final TextEditingController controllerNotes = TextEditingController();
  StepInspectionBoxForm(this.stepForm,{super.key});




  @override
  Widget build(BuildContext context) {
    controllerNotes.text = stepForm.inspectionBox?.notes ?? "";
    return Column(
      children: [
         Image.asset(
            stepForm.imagePath,
            height: 200,
            width: 400,
         ),
        CheckInput(title:stepForm.title, active: stepForm.inspectionBox?.check ?? false ,callback: (value) {
       stepForm.inspectionBox?.check = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionBox(stepForm));
        },),
        MultilineTextInput(title: "Notas", controller: controllerNotes, callback: (value) {
            
            stepForm.inspectionBox?.notes = value;
            BlocProvider.of<InspectionBloc>(context)
                .add(StepUpdateInspectionBox(stepForm));
          })
    ],
  );
  }

}