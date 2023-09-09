import 'package:flutter/widgets.dart';

class TitleStep extends StatelessWidget {
  final String? title;
  const TitleStep(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 24),
    child: Text(
      title ?? "",
      style: const TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.w900
      ),
    ),
    );
  }

}