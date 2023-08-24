import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';

class RegistrationAppBar extends StatefulWidget implements PreferredSizeWidget {
    RegistrationAppBar({super.key}) : preferredSize = Size.fromHeight(kToolbarHeight);
    @override
    final Size preferredSize; // default is 56.0
    @override
    _RegistrationAppBarState createState() => _RegistrationAppBarState();
}
class _RegistrationAppBarState extends State<RegistrationAppBar>{
    @override
    Widget build(BuildContext context) {
        return AppBar(
      title: const Text('Inspection Process'),
      backgroundColor: backgroundColor,
     leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(5), child: IconButton.filledTonal(
          icon: const Icon(Icons.arrow_back),
          onPressed: () { 
              //TODO back
          },
        ),);
      },
    ),
      elevation: 0,
    );
    }
}