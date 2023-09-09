import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/description_step.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon_secondary.dart';
import 'package:reception_app/widgets/spacers.dart';

 
class StepDoneForm extends StatelessWidget {
  final Registration registration;
  const StepDoneForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.inspectionDone),
        DescriptionStep(AppLocalizations.of(context)!.inspectionDoneDescription),
        const HeightSpacer(myHeight:20),
        QrImageView(
          data: '1234567890',
          version: QrVersions.auto,
          size: 200.0,
        ),
        const HeightSpacer(myHeight:80),
        ButtonWithIconSecondary(icon: Icons.share,title: AppLocalizations.of(context)!.inspectionSendOtherCode,callback: () => {},),
        
        
    ],
  ));
  }

}