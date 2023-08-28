class StepWheelForm {
 
  StepWheeleFormType type;
  bool? frontExterior;
  bool? frontInterior;
  bool? backwardExterior;
  bool? backwardInterior;
  String? notes;
  StepWheelForm({required this.type});
}


enum StepWheeleFormType {
   leftSide,rightSide
}