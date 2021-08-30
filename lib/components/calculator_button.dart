import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({this.value = '', required this.onPressed});

  final String value;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(
        child: Text(
          value,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
