import 'package:calculator/components/calculator_button.dart';
import 'package:calculator/components/calculator_button_row.dart';
import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  const NumberPad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '7',
                onPressed: () {
                  // updateOutput('7');
                },
              ),
              CalculatorButton(
                value: '8',
                onPressed: () {
                  // updateOutput('8');
                },
              ),
              CalculatorButton(
                value: '9',
                onPressed: () {
                  // updateOutput('9');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '4',
                onPressed: () {
                  // updateOutput('7');
                },
              ),
              CalculatorButton(
                value: '5',
                onPressed: () {
                  // updateOutput('8');
                },
              ),
              CalculatorButton(
                value: '6',
                onPressed: () {
                  // updateOutput('9');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '1',
                onPressed: () {
                  // updateOutput('7');
                },
              ),
              CalculatorButton(
                value: '2',
                onPressed: () {
                  // updateOutput('8');
                },
              ),
              CalculatorButton(
                value: '3',
                onPressed: () {
                  // updateOutput('9');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '0',
                onPressed: () {
                  // updateOutput('7');
                },
              ),
              CalculatorButton(
                value: '.',
                onPressed: () {
                  // updateOutput('8');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
