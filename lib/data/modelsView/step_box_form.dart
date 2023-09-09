import 'package:reception_app/data/network/entities/inspection_box.dart';

class StepBoxForm {
  String title;
  StepFormType type;
  String imagePath;
  InspectionBox? inspectionBox;
  StepBoxForm({required this.title,required this.type,required this.imagePath,this.inspectionBox});
}


enum StepFormType {
   leftSideBox,
   rightSideBox,
   frontSideBox,
   backSideBox,
   floorSideBox,
   roofSideBox,
   leftSideWheel,
   rightSideWheel,
}