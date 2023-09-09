import 'package:flutter/material.dart';
import 'package:reception_app/data/network/entities/registration.dart';
import 'package:reception_app/pages/inspection/widgets/description_step.dart';
import 'package:reception_app/pages/inspection/widgets/phone_input.dart';
import 'package:reception_app/pages/inspection/widgets/title_step.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reception_app/widgets/button_with_icon.dart';
import 'package:reception_app/widgets/spacers.dart';

 
class StepAuthorizationPhoneForm extends StatelessWidget {
  final Registration registration;
  const StepAuthorizationPhoneForm(this.registration,{super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
    child:Column(
      children: [
        TitleStep(AppLocalizations.of(context)!.inspectionAuthorization),
        DescriptionStep(AppLocalizations.of(context)!.inspectionAuthorizationDescription),
        const HeightSpacer(myHeight:20),
        PhoneInput(title: "Numero de Telefono",value: registration.releasePhone, callback: (value) {
            //registration.notes = value;
        }),
        const HeightSpacer(myHeight:20),
        ButtonWithIcon(icon: Icons.sms,title: AppLocalizations.of(context)!.inspectionSendCodeSMS,callback: () => {},),
        const Text("OR"),
        ButtonWithIcon(icon: Icons.whatshot,title: AppLocalizations.of(context)!.inspectionSendCodeByWhatsapp,callback: () => {},),
        
    ],
  ));
  }

}