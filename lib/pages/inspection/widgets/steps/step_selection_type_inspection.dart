import 'package:flutter/material.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class StepSelectionTypeInspection extends StatelessWidget {
  final Registration registration;
  const StepSelectionTypeInspection(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.helloWorld),
        Padding(
          padding: const EdgeInsets.all(12),
          child: FilledButton(
            onPressed: () {}, 
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Entry",style:TextStyle(
                  fontSize: 24
                ),),
                Icon(Icons.arrow_forward)
              ]
            )))),
             Padding(
          padding: const EdgeInsets.all(12),
          child: FilledButton(
            onPressed: () {}, 
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Exit",style:TextStyle(
                  fontSize: 24
                ),),
                Icon(Icons.arrow_forward)
              ]
            )))),
             Padding(
          padding: const EdgeInsets.all(12),
          child: FilledButton(
            onPressed: () {}, 
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Exportation",style:TextStyle(
                  fontSize: 24
                ),),
                Icon(Icons.arrow_forward)
              ]
            )))),
             Padding(
          padding: const EdgeInsets.all(12),
          child: FilledButton(
            onPressed: () {}, 
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Crossborder",style:TextStyle(
                  fontSize: 24
                ),),
                Icon(Icons.arrow_forward)
              ]
            ))))
    ],
  );
  }

}