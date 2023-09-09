import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';

import '../../../../blocs/inspection/inspection_bloc.dart';
import '../autocomplete_input.dart';
import '../multiline_text_input.dart';
import '../number_input.dart';
class StepEntryInspectionForm extends StatelessWidget {
  final Registration registration;
  final TextEditingController controllerNotes = TextEditingController(text: "");

   StepEntryInspectionForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspectionEntry),
        AutocompleteInput(title: "Selecciona un Cliente"),
        AutocompleteInput(title: "Selecciona un Transfer"),
        NumberInput(title: "Numero de Equipo",value: registration.equipmentNumber, callback: (value) {
            //registration.notes = value;
          }),
        NumberInput(title: "Numero de Pedimento",value: registration.pedimentoNumber, callback: (value) {
            //registration.notes = value;
          }),
        MultilineTextInput(title: "Notas",controller: controllerNotes,value: registration.notes, callback: (value) {
            //registration.notes = value;
          }),
         ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.next,callback: () => {
          BlocProvider.of<InspectionBloc>(context).add(StepContinue())
        },)
 
       
    ],
  ));
  }

}