 
 


 
import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

class MultilineTextInput extends StatelessWidget {
 String title;
 MultilineTextInput({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        
        keyboardType: TextInputType.multiline,
        maxLength: 140,
        maxLines: 4,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
