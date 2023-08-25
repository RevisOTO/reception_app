import 'package:flutter/material.dart';

class ContainerInput extends StatefulWidget {
  const ContainerInput(
      {super.key,
      required this.input,
      required this.label,
      required this.padding});
  final Widget input;
  final Widget label;
  final double padding;
  @override
  State<ContainerInput> createState() => _ContainerInputState();
}

class _ContainerInputState extends State<ContainerInput> {
  @override
  Widget build(BuildContext context) {
    final input = widget.input;
    final label = widget.label;
    final padding = widget.padding;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 68, 68, 68)),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [label, input],
          ),
        ),
      ),
    );
  }
}
