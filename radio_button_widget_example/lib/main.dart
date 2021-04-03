import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Radio Button Example'),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _rValue = 0;

  void method(int value){

    setState(() {
      _rValue = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            Radio(
              value: 1,
              groupValue: _rValue,
              onChanged: (value){
                method(value);
              },
              activeColor: Colors.red,
            ),
            Radio(
              value: 2,
              groupValue: _rValue,
              onChanged: method,
              activeColor: Colors.red,
            ),
            Radio(
              value: 3,
              groupValue: _rValue,
              onChanged: method,
              activeColor: Colors.red,
            ),
            Radio(
              value: 4,
              groupValue:_rValue,
              onChanged: (value){
                method(value);
              },
              activeColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

