import 'package:flutter/widgets.dart';

class DescriptionStep extends StatelessWidget {
  final String? title;
  const DescriptionStep(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 12,right: 12,top: 0,bottom: 24),
    child: Text(
      title ?? "",
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500
      ),
    ),
    );
  }

}