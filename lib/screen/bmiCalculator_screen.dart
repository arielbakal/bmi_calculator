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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Column(
          children: const <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                icon: Icon(Icons.upgrade),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                icon: Icon(Icons.accessibility),
              ),
            ),
          ],
        ),
      ),
    );
  }
}