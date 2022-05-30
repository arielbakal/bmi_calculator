import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {

  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result = 0;

  void calculateBMI(){
    double height = double.parse(_heightController.text) / 100 ;

    double weight = double.parse(_weightController.text);

    double heighSquare = height * height;

    double result = weight / heighSquare;

    _result = result;
    setState(() {});

  }

  void reset(){

    _result = 0;
    setState(() {});
  }

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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Height (cm)',
                  icon: Icon(Icons.upgrade),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight (kg)',
                  icon: Icon(Icons.accessibility),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                child: const Text("Calculate"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: () => calculateBMI(),
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                _result.toStringAsFixed(2),
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 19.4,
                  fontWeight: FontWeight.w500
                ),  
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: const Icon(Icons.restart_alt_outlined),
          onPressed: () => reset(),
        ));
  }
}
