import 'package:flutter/material.dart';
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
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionEntry,callback: () => {},),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionExit,callback: () => {},),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionExportation,callback: () => {},),
        ButtonWithIcon(icon: Icons.arrow_forward,title: AppLocalizations.of(context)!.typeInspectionCrossborder,callback: () => {},),
    ],
  ));
  }

}