import 'package:flutter/material.dart';
import 'function_calculator.dart';  // Імпортуємо клас для розрахунку функції

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FunctionCalculator _calculator = FunctionCalculator();
  double _xValue = 0.0;
  double _result = 0.0;

  void _calculate() {
    setState(() {
      _result = _calculator.calculate(_xValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AV-31: Lev\'s last Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Input X value:', style: TextStyle(fontSize: 24)),
            TextField(
              onChanged: (value) {
                setState(() {
                  _xValue = double.tryParse(value) ?? 0.0;
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter a number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Result: $_result', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Mouse Icon',
        child: Icon(Icons.mouse),
      ),
    );
  }
}
