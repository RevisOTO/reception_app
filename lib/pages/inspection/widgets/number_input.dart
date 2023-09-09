import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';
 

// ignore: must_be_immutable
class NumberInput extends StatelessWidget {
    final void Function(String) callback;
 String title;
 String? value;
 NumberInput({super.key,required this.title,this.value,required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
           controller: TextEditingController(text: value),
        onSubmitted: (String value) => {
          callback(value)
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
      ),
    );
  }
}
