import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:reception_app/data/modelsView/inspection_type.dart';

import '../../data/network/entities/registration.dart';

part 'inspection_event.dart';
part 'inspection_state.dart';

class InspectionBloc extends Bloc<InspectionEvent, InspectionState> {
  int currentStep = 0;
  final int maxSteps = 10;
  final Registration registration;
  InspectionBloc(this.registration)
      : super(InspectionInitial(0, registration)) {
    on<InspectionEvent>((event, emit) async {
      if (event is StepContinue || event is StepTypeEntryTapped) {
        if (currentStep < maxSteps) {
          currentStep++;
        }
        if (event is StepTypeEntryTapped) {
          registration.type = event.type.toString();
        }
      } else if (event is StepCancelled) {
        if (currentStep > 0) {
          currentStep--;
        }
      }

      switch (currentStep) {
        case 0:
          emit(InspectionInitial(currentStep, registration));
        case 1:
          {
            
              if (registration.type == InspectionType.entry.toString()) {
                emit(InspectionStepFormNormalEntry(currentStep, registration));
              } else if (registration.type == InspectionType.exit.toString()) {
                emit(InspectionStepFormExit(currentStep, registration));
              } else if (registration.type == InspectionType.crossborder.toString()) {
                emit(InspectionStepFormCrossborderEntry(
                    currentStep, registration));
              } else if (registration.type == InspectionType.exportation.toString()) {
                emit(InspectionStepFormExportationEntry(
                    currentStep, registration));
              }
            
          }
        case 2:
          emit(InspectionStepBoxRevision(currentStep, registration));
        case 3:
          emit(InspectionStepBoxWheels(currentStep, registration));
        case 4:
          emit(InspectionStepFormValidation(currentStep, registration));
        case 5:
          emit(InspectionStepFormConfirmation(currentStep, registration));
        case 6:
          emit(InspectionStepDoneResults(currentStep, registration));

        default:
          emit(InspectionInitial(currentStep, registration));
      }
    });
  }
}
