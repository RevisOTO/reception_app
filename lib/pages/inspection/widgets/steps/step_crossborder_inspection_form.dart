import 'package:flutter/material.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/autocomplete_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class StepCrossborderInspectionForm extends StatelessWidget {
  final Registration registration;
  const StepCrossborderInspectionForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspectionCrossborder),
        AutocompleteInput(title: "Selecciona un Cliente"),
        AutocompleteInput(title: "Selecciona un Transferr"),
        AutocompleteInput(title: "Enviado por"),
        AutocompleteInput(title: "Selecciona un Destino"),
        MultilineTextInput(title: "Notas")
    ],
  ));
  }

}