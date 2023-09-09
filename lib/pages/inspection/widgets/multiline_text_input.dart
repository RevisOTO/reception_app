 
 


 
import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

// ignore: must_be_immutable
class MultilineTextInput extends StatelessWidget {
 String title;
 String? value;
 final void Function(String) callback;
 final TextEditingController controller;
 MultilineTextInput({super.key,required this.title,this.value, required this.callback,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        controller: controller,
        
        //onEditingComplete: () => callback(controller.text),
        onChanged: (v) => {
           controller.text = v
        },
        onTapOutside: (onTapOutside) {
        
          callback(controller.text);
        },
        keyboardType: TextInputType.multiline,
        maxLength: 140,
        minLines: 2,
        maxLines: 4,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
          
        ),
      ),
    );
  }
}
