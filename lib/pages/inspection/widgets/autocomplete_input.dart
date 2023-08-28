import 'package:flutter/material.dart';
import 'package:reception_app/globals/constants.dart';

class AutocompleteInput extends StatelessWidget {
  String title;
 AutocompleteInput({super.key,required this.title});

  static const List<String> _kOptions = <String>[
    'apple',
    'banana',
    'orange',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child:Autocomplete<String>(
      
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
      fieldViewBuilder: (
          BuildContext context,
          TextEditingController fieldTextEditingController,
          FocusNode fieldFocusNode,
          VoidCallback onFieldSubmitted
          ) {
            return TextField(
              controller: fieldTextEditingController,
              focusNode: fieldFocusNode,
              decoration:  InputDecoration(
                border: OutlineInputBorder(borderRadius: kBorderRadiusInput),
                labelText: title
                ),
               style: const TextStyle(fontWeight: FontWeight.bold),
            );
      },
      
    ));
  }
}
