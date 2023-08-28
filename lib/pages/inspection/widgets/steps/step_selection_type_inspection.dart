import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/data/modelsView/inspection_type.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';
class StepSelectionTypeInspection extends StatelessWidget {
  final Registration registration;
  const StepSelectionTypeInspection(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.typeInspection),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionEntry,callback: () => {
            BlocProvider.of<InspectionBloc>(context).add(const StepTypeEntryTapped(type: InspectionType.entry))
        },),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionExit,callback: () => {
            BlocProvider.of<InspectionBloc>(context).add(const StepTypeEntryTapped(type: InspectionType.exit))
        },),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionExportation,callback: () => {
          BlocProvider.of<InspectionBloc>(context).add(const StepTypeEntryTapped(type: InspectionType.crossborder))
        },),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionCrossborder,callback: () => {
          BlocProvider.of<InspectionBloc>(context).add(const StepTypeEntryTapped(type: InspectionType.exportation))
        },),
    ],
  ));
  }

}