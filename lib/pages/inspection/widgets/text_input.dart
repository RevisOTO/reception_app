import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

// ignore: must_be_immutable
class TextInput extends StatelessWidget {
  final void Function(String) callback;
 String title;
 String? value;
 
 TextInput({super.key,required this.title,this.value,required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        controller: TextEditingController(text: value),
        onSubmitted: (String value) => {
          callback(value)
        },
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
