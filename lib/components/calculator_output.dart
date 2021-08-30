import 'package:flutter/material.dart';

import '../constants.dart';

class CalculatorOutput extends StatelessWidget {
  final String equationText;

  CalculatorOutput({required this.equationText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        equationText,
        style: kOutputStyle,
      ),
    );
  }
}
