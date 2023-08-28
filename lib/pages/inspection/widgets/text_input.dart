import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

class TextInput extends StatelessWidget {
 String title;
 TextInput({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
