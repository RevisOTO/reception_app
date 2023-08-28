import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/description_step.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';
import 'package:reception_app/widgets/button_with_icon_secondary.dart';
import 'package:reception_app/widgets/spacers.dart';

 
class StepAuthorizationPhoneCodeForm extends StatelessWidget {
  final Registration registration;
  const StepAuthorizationPhoneCodeForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.inspectionAuthorization),
        DescriptionStep(AppLocalizations.of(context)!.inspectionAuthorizationDescription),
        const HeightSpacer(myHeight:20),
        Pinput(
          onCompleted: (pin) => print(pin),
        ),
        const HeightSpacer(myHeight:80),
        ButtonWithIconSecondary(icon: Icons.send,title: AppLocalizations.of(context)!.inspectionSendOtherCode,callback: () => {},),
        
        
    ],
  ));
  }

}