import 'package:calculator/components/calculator_button.dart';
import 'package:calculator/components/calculator_button_row.dart';
import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  final Function(String val) buttonPress;

  NumberPad({required this.buttonPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '7',
                onPressed: () {
                  buttonPress('7');
                },
              ),
              CalculatorButton(
                value: '8',
                onPressed: () {
                  buttonPress('8');
                },
              ),
              CalculatorButton(
                value: '9',
                onPressed: () {
                  buttonPress('9');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '4',
                onPressed: () {
                  buttonPress('4');
                },
              ),
              CalculatorButton(
                value: '5',
                onPressed: () {
                  buttonPress('5');
                },
              ),
              CalculatorButton(
                value: '6',
                onPressed: () {
                  buttonPress('6');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '1',
                onPressed: () {
                  buttonPress('1');
                },
              ),
              CalculatorButton(
                value: '2',
                onPressed: () {
                  buttonPress('2');
                },
              ),
              CalculatorButton(
                value: '3',
                onPressed: () {
                  buttonPress('3');
                },
              )
            ],
          ),
          CalculatorButtonRow(
            buttons: [
              CalculatorButton(
                value: '0',
                onPressed: () {
                  buttonPress('0');
                },
              ),
              CalculatorButton(
                value: '.',
                onPressed: () {
                  buttonPress('.');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
