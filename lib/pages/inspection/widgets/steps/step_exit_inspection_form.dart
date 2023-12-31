import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';

import '../autocomplete_input.dart';
class StepExitInspectionForm extends StatelessWidget {
  final Registration registration;
  final TextEditingController controllerNotes = TextEditingController(text: "");
  StepExitInspectionForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspectionExit),
        AutocompleteInput(title: "Selecciona un Camion"),
        AutocompleteInput(title: "Selecciona un operador"),
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