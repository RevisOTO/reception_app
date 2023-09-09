import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reception_app/blocs/inspection/inspection_bloc.dart';
import 'package:reception_app/globals/constants.dart';

class RegistrationAppBar extends StatefulWidget implements PreferredSizeWidget {
    const RegistrationAppBar({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);
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
              BlocProvider.of<InspectionBloc>(context).add(StepCancelled());
          },
        ),);
      },
    ),
      elevation: 0,
    );
    }
}