import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final Color backgroundColor;
  final Size size;
  final Widget label;
  final double radius;
  final Color textColor;
  final Function onClick;
  const RoundedButton(
      {super.key,
      required this.backgroundColor,
      required this.size,
      required this.label,
      required this.radius,
      required this.textColor,
      required this.onClick});

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    Size sizeCustom = widget.size;
    Color backgroundColor = widget.backgroundColor;
    Widget label = widget.label;
    double radius = widget.radius;
    Color textColor = widget.textColor;
    Function onClick = widget.onClick;
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius))),
            shadowColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 231, 231, 231)),
            fixedSize: MaterialStatePropertyAll(sizeCustom),
            backgroundColor: MaterialStatePropertyAll(backgroundColor)),
        onPressed: onClick(),
        child: label);
  }
}
