import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
 
part 'inspection_event.dart';
part 'inspection_state.dart';
 
class InspectionBloc extends Bloc<InspectionEvent, InspectionState> {

  InspectionBloc() : super(InspectionInitial()) {
      on<InspectionEvent>((event, emit) async {
      

            //TODO agregar eventos 

    });
  }
}