import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget{
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BmiCalculatorScreenState();

}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.amber,
      ),
    );
  }
}