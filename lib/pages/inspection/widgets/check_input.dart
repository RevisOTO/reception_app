import 'package:flutter/material.dart';
 

class CheckInput extends StatelessWidget {
 String title;
 bool active;
 final void Function(bool) callback;
 CheckInput({super.key,required this.title,required this.active, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(12),
          child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(title,style:const TextStyle(
                  fontSize: 24
                ),),
              Switch(
              value: active,
              onChanged: (bool value) {
                callback(value);
              },
            )
              ]
            ));
  }
}
