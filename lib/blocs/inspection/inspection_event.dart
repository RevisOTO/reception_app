part of 'inspection_bloc.dart';


@immutable
 
abstract class InspectionEvent {
  const InspectionEvent();
}

class StepTypeEntryTapped extends InspectionEvent {
  final InspectionType type;
  const StepTypeEntryTapped({required this.type});

  @override
  String toString() => 'StepTapped { step: $type }';
}

class StepCancelled extends InspectionEvent {
  @override
  String toString() => 'StepCancelled';
}

class StepContinue extends InspectionEvent {
  @override
  String toString() => 'StepContinue';
}
 