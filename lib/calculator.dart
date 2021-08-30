import 'package:calculator/components/calculator_output.dart';
import 'package:calculator/components/number_pad.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String calculatorOutput = '1 + 2';

  void updateOutput(String val) {
    setState(() {
      calculatorOutput = calculatorOutput + val;
    });
  }

  void clearOutput() {
    setState(() {
      calculatorOutput = '';
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
          CalculatorOutput(equationText: calculatorOutput),
          SizedBox(height: 35.0),
          Row(
            children: [
              NumberPad(),
            ],
          )
        ],
      ),
    );
  }
}
