part of 'inspection_bloc.dart';


abstract class InspectionState {
 final int step;
 final Registration registration;

  InspectionState(this.step, this.registration);
}

class InspectionInitial extends InspectionState {
  InspectionInitial(super.step, super.registration);
}

class InspectionCancel extends InspectionState {
  InspectionCancel(super.step, super.registration);
  
}
 
class InspectionStepFormNormalEntry extends InspectionState {
  InspectionStepFormNormalEntry(super.step, super.registration);
}

class InspectionStepFormCrossborderEntry extends InspectionState {
  InspectionStepFormCrossborderEntry(super.step, super.registration);
}

class InspectionStepFormExportationEntry extends InspectionState {
  InspectionStepFormExportationEntry(super.step, super.registration);
}

class InspectionStepFormExit extends InspectionState {
  InspectionStepFormExit(super.step, super.registration);
}

class InspectionStepBoxRevision extends InspectionState {
  InspectionStepBoxRevision(super.step, super.registration);
}

class InspectionStepBoxWheels extends InspectionState {
  InspectionStepBoxWheels(super.step, super.registration);
}


class InspectionStepFormValidation extends InspectionState {
  InspectionStepFormValidation(super.step, super.registration);
}
 
class InspectionStepFormConfirmation extends InspectionState {
  InspectionStepFormConfirmation(super.step, super.registration);
}
  

class InspectionProblemsConnection extends InspectionState {
  InspectionProblemsConnection(super.step, super.registration);
}
    
class InspectionStepDoneResults extends InspectionState {
  InspectionStepDoneResults(super.step, super.registration);
}
 

class InspectionLoading extends InspectionState {
  InspectionLoading(super.step, super.registration);
}

class InspectionLoaded extends InspectionState {
  InspectionLoaded(super.step, super.registration);
  
}

 
class InspectionError extends InspectionState {
  final String message;

  InspectionError(super.step, super.registration, this.message);
 

  @override
  String toString() => 'InspectionError';
}
