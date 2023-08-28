import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

class PhoneInput extends StatelessWidget {
 String title;
 PhoneInput({super.key,required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
