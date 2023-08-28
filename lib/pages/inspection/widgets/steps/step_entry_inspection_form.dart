import 'package:flutter/material.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../autocomplete_input.dart';
import '../multiline_text_input.dart';
import '../number_input.dart';
class StepEntryInspectionForm extends StatelessWidget {
  final Registration registration;
  const StepEntryInspectionForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspectionEntry),
        AutocompleteInput(title: "Selecciona un Cliente"),
        AutocompleteInput(title: "Selecciona un Transfer"),
        NumberInput(title: "Numero de Equipo"),
        NumberInput(title: "Numero de Pedimento"),
        MultilineTextInput(title: "Notas")
    ],
  ));
  }

}