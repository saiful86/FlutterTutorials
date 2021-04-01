import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Checkbox Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Checkbox Widget Example'),),
      body: MyApp(),
    )
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _cValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple)
        ),
        child: Transform.scale(
          scale: 2.0,
          child: Checkbox(
            value: _cValue,
            onChanged: (staus){
              print(staus);
              setState(() {
                _cValue = staus;
              });
            },
            activeColor: Colors.purple,
            checkColor: Colors.red,
            tristate: true,
          ),
        ),
      ),
    );
  }
}

