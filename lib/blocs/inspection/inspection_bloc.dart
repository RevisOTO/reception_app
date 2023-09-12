import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:reception_app/data/modelsView/inspection_type.dart';
import 'package:reception_app/data/modelsView/step_box_form.dart';
import 'package:reception_app/data/modelsView/step_wheel_form.dart';
import 'package:reception_app/data/network/entities/inspection_box.dart';
import 'package:reception_app/data/network/entities/inspection_step.dart';
import 'package:reception_app/data/network/entities/inspection_wheel.dart';

import '../../data/network/entities/registration.dart';

part 'inspection_event.dart';
part 'inspection_state.dart';

class InspectionBloc extends Bloc<InspectionEvent, InspectionState> {
  int currentStep = 0;
  final int maxSteps = 10;
  final Registration _registration;
  InspectionBloc(this._registration)
      : super(InspectionInitial(0, _registration)) {
    on<InspectionEvent>((event, emit) async {
      if (event is StepContinue || event is StepTypeEntryTapped) {
        if (currentStep < maxSteps) {
          currentStep++;
        }
        if (event is StepTypeEntryTapped) {
          _registration.type = event.type.toString();
        }
      } else if (event is StepCancelled) {
        if (currentStep > 0) {
          currentStep--;
        }
      }
      //set CurrentStep
      updateStepInspection(emit);
    });
  }

  updateStepInspection(Emitter<InspectionState> emit){
      switch (currentStep) {
        case 0:
          emit(InspectionInitial(currentStep, _registration));
        case 1:
          {
            
              if (_registration.type == InspectionType.entry.toString()) {
                emit(InspectionStepFormNormalEntry(currentStep, _registration));
              } else if (_registration.type == InspectionType.exit.toString()) {
                emit(InspectionStepFormExit(currentStep, _registration));
              } else if (_registration.type == InspectionType.crossborder.toString()) {
                emit(InspectionStepFormCrossborderEntry(
                    currentStep, _registration));
              } else if (_registration.type == InspectionType.exportation.toString()) {
                emit(InspectionStepFormExportationEntry(
                    currentStep, _registration));
              }
            
          }
        case 2:
          emit(InspectionStepBoxRevision(currentStep, _registration));
        case 3:
          emit(InspectionStepBoxWheels(currentStep, _registration));
        case 4:
          emit(InspectionStepFormValidation(currentStep, _registration));
        case 5:
          emit(InspectionStepFormConfirmation(currentStep, _registration));
        case 6:
          emit(InspectionStepDoneResults(currentStep, _registration));

        default:
          emit(InspectionInitial(currentStep, _registration));
      }
   }



  Future<void> updateBoxStepInspection(StepUpdateInspectionBox event,Emitter<InspectionState> emitter) async {
    try{
      //Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      var step = getCurrentStep(event.step.type.toString());

      if(step.order == -1){
        step.order = _registration.inspectionStep!.length + 1;
      }
      step.longitude = 0.0;//position.longitude;
      step.latitude = 0.0;//position.latitude;
 
      step.inspectionBox = InspectionBox(
        notes: event.step.inspectionBox?.notes,
        check: event.step.inspectionBox?.check, 
      );
      if(step.id == -1){
      _registration.inspectionStep?.add(step);
      }else{
        _registration.inspectionStep?[_registration.inspectionStep!.indexWhere((x) => x.id == step.id)] = step;
      }
    }
    catch(ex){
        emitter(InspectionError(currentStep,_registration ,"Ocurrio un problema al guardar"));
    }

  }
}
