import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Slider Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Slider Widget Example'),),
        body: MyApp(),
      )
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  double _sValue = 2.0;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple)
        ),
        child: Column(
            children : [
              Slider(
                value: _sValue,
                min: 0.0,
                max: 10.0,
                onChanged: (value){

                  setState(() {
                    _sValue = value;
                  });
                  print(value);
                },
                activeColor: Colors.purple,
                inactiveColor: Colors.yellow,
                divisions: 4,
                label: 'Range',
              ),
              Text(' Range Value $_sValue ')
            ]
        ),
      ),
    );
  }
}

