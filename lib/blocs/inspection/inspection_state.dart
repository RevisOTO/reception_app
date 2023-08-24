part of 'inspection_bloc.dart';


 
abstract class InspectionState {}

class InspectionInitial extends InspectionState {}

class InspectionStepType extends InspectionState {
  InspectionStepType();
}

class InspectionStepFormNormalEntry extends InspectionState {
  InspectionStepFormNormalEntry();
}

class InspectionStepFormCrossborderEntry extends InspectionState {
  InspectionStepFormCrossborderEntry();
}

class InspectionStepFormExportationEntry extends InspectionState {
  InspectionStepFormExportationEntry();
}

class InspectionStepFormExit extends InspectionState {
  InspectionStepFormExit();
}

class InspectionStepBoxRevision extends InspectionState {
  InspectionStepBoxRevision();
}

class InspectionStepBoxWheels extends InspectionState {
  InspectionStepBoxWheels();
}


class InspectionStepFormValidation extends InspectionState {
  InspectionStepFormValidation();
}
 
class InspectionStepFormConfirmation extends InspectionState {
  InspectionStepFormConfirmation();
}
  

class InspectionProblemsConnection extends InspectionState {
  InspectionProblemsConnection();
}
    
class InspectionStepDoneResults extends InspectionState {
  InspectionStepDoneResults();
}

class InspectionInValidatedUser extends InspectionState {}

class InspectionLoading extends InspectionState {}

class InspectionLoaded extends InspectionState {
  final String username;
  InspectionLoaded(
    this.username,
  );
}

class InspectionError extends InspectionState {}