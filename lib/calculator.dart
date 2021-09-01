import 'package:calculator/components/calculator_output.dart';
import 'package:calculator/components/number_pad.dart';
import 'package:calculator/components/operator_pad.dart';
import 'package:calculator/services/calculator_service.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  CalculatorService calculatorService = CalculatorService();
  String calculatorDisplay = '1 + 2';
  bool computationPerformed = false;

  void updateNumber(String val) {
    clearDisplayIfNewEquation();

    setState(() {
      calculatorDisplay = calculatorDisplay + val;
    });
  }

  void addOperator(String operator) {
    if (!lastCharIsNumber() || computationPerformed) {
      return;
    }

    setState(() {
      calculatorDisplay = calculatorDisplay + ' ' + operator + ' ';
    });
  }

  bool lastCharIsNumber() {
    final String lastChar = getLastDisplayChar();
    return lastChar != '+' && lastChar != '-' && lastChar != '*' && lastChar != '/';
  }

  String getLastDisplayChar() {
    final String trimmed = calculatorDisplay.trim();
    return trimmed[trimmed.length - 1];
  }

  void clearOutput() {
    setState(() {
      calculatorDisplay = '';
    });
  }

  void calculate() {
    print('calculate the thing');
    String computedValue = calculatorService.evaluateString(calculatorDisplay);
    computationPerformed = true;
    setState(() {
      calculatorDisplay = computedValue;
    });
  }

  clearDisplayIfNewEquation() {
    if (computationPerformed) {
      clearOutput();
      computationPerformed = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          CalculatorOutput(equationText: calculatorDisplay),
          SizedBox(height: 35.0),
          Row(
            children: [
              NumberPad(buttonPress: (val) {
                updateNumber(val);
              }),
              OperatorPad(operatorButtonPress: addOperator, clearButtonPress: clearOutput, equalsButtonPress: calculate)
            ],
          )
        ],
      ),
    );
  }
}
