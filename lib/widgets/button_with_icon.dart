import 'package:flutter/material.dart';

 

// ignore: must_be_immutable
class ButtonWithIcon extends StatelessWidget {
  IconData icon;
  String title;
 VoidCallback callback;

  ButtonWithIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical:4),
          child: FilledButton(
            
            onPressed: () {
                callback();
            }, 
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(title,style:const TextStyle(
                  fontSize: 24
                ),),
                Icon(icon)
              ]
            ))));
  }
}