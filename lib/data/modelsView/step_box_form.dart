class StepBoxForm {
  String title;
  StepFormType type;
  String imagePath;
  bool? active;
  String? notes;
  StepBoxForm({required this.title,required this.type,required this.imagePath});
}


enum StepFormType {
   leftSide,rightSide,frontSide,backSide,floorSide,roofSide
}