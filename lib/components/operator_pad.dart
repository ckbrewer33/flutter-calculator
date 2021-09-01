
import 'package:calculator/components/calculator_button.dart';
import 'package:flutter/material.dart';

class OperatorPad extends StatelessWidget {
  final Function(String operator) operatorButtonPress;
  final Function() clearButtonPress;
  final Function() equalsButtonPress;

  OperatorPad({
    required this.operatorButtonPress,
    required this.clearButtonPress,
    required this.equalsButtonPress
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CalculatorButton(value: '+', onPressed: () {
                operatorButtonPress('+');
              }),
              CalculatorButton(value: '-', onPressed: () {
                operatorButtonPress('-');
              }),
              CalculatorButton(value: '*', onPressed: () {
                operatorButtonPress('*');
              }),
              CalculatorButton(value: '/', onPressed: () {
                operatorButtonPress('/');
              }),
            ]
          ),
          Column(
            children: [
              CalculatorButton(value: 'C', onPressed: () {
                clearButtonPress();
              }),
              CalculatorButton(value: '=', onPressed: () {
                equalsButtonPress();
              }),
            ],
          )
        ],
      )
    );
  }
}

