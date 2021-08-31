import 'package:flutter/material.dart';

class CalculatorButtonRow extends StatelessWidget {
  final List<Widget> buttons;

  CalculatorButtonRow({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons,
    );
  }
}
