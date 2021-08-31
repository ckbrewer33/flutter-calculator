import 'package:calculator/components/calculator_output.dart';
import 'package:calculator/components/number_pad.dart';
import 'package:calculator/components/operator_pad.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equationText = '1 + 2';

  void updateNumber(String val) {
    setState(() {
      equationText = equationText + val;
    });
  }

  void addOperator(String operator) {
    setState(() {
      equationText = equationText + ' ' + operator + ' ';
    });
  }

  void clearOutput() {
    setState(() {
      equationText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          CalculatorOutput(equationText: equationText),
          SizedBox(height: 35.0),
          Row(
            children: [
              NumberPad(buttonPress: (val) {
                updateNumber(val);
              }),
              OperatorPad(operatorButtonPress: addOperator, clearButtonPress: clearOutput)
            ],
          )
        ],
      ),
    );
  }
}
