import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/data/network/entities/inspection_wheel.dart';

class StepWheelForm {
  int id;
  StepFormType type;
  InspectionWheel? inspectionWheel;
 
  StepWheelForm({required this.type,required this.id,this.inspectionWheel});
}


 