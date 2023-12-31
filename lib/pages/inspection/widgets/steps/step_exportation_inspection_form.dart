import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/autocomplete_input.dart';
import 'package:reception_app/pages/inspection/widgets/datetime_input.dart';
import 'package:reception_app/pages/inspection/widgets/multiline_text_input.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';
class StepExportationInspectionForm extends StatelessWidget {
  final Registration registration;
  final TextEditingController dateEntry = TextEditingController();
  final TextEditingController dateLoad = TextEditingController();
  final TextEditingController dateExit = TextEditingController();
  final TextEditingController controllerNotes = TextEditingController(text: "");
  final TextEditingController controllerSeals = TextEditingController(text: "");

  final TextEditingController dateTransfer = TextEditingController();
  StepExportationInspectionForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspectionExportation),
        AutocompleteInput(title: "Selecciona un Cliente"),
        DateTimeInput(title: "Fecha de Entrada",dateinput: dateEntry,callback: (date,stringDate) => {
          dateEntry.text = stringDate
        }),
        DateTimeInput(title: "Fecha de Carga",dateinput: dateLoad,callback: (date,stringDate) => {
          dateLoad.text = stringDate
        }),
        DateTimeInput(title: "Fecha de Salida",dateinput: dateExit,callback: (date,stringDate) => {
          dateExit.text = stringDate
        }),
        DateTimeInput(title: "Fecha del Transferr",dateinput: dateTransfer,callback: (date,stringDate) => {
          dateTransfer.text = stringDate
        }),
        MultilineTextInput(title: "Sellos",controller: controllerSeals,value: registration.seals, callback: (value) {
            registration.notes = value;
          }),
        MultilineTextInput(title: "Notas",controller: controllerNotes,value: registration.notes, callback: (value) {
            registration.notes = value;
          },),
         ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.next,callback: () => {
          BlocProvider.of<InspectionBloc>(context).add(StepContinue())
        },)
    ],
  ));
  }

}