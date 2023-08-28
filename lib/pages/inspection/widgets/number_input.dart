import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

class NumberInput extends StatelessWidget {
 String title;
 NumberInput({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
      
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
