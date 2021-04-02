import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Checkbox ListTile',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Checkbox ListTile Widget'),),
      body: MyApp(),
    ),
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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple)
        ),
        child: CheckboxListTile(
          value: _cValue,
          onChanged: (value){
            setState(() {
              _cValue = value;
            });
            print(value);
          },
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          secondary: Container(
              width: 50,
              height: 50,
              child: Icon(Icons.favorite)
          ),
          activeColor: Colors.purple,
          checkColor: Colors.black,
          selected: _cValue,
          controlAffinity: ListTileControlAffinity.platform,
        ),
      ),
    );
  }
}

