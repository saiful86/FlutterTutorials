import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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

  int _rValue = 0;

  void method(int value){
    setState(() {
      _rValue = value;
    });
    print(value);
  }

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
            RadioListTile(
              value: 1,
              groupValue: _rValue,
              onChanged: (value){
                method(value);
              },
              title: Text('Flutter'),
              subtitle: Text('SubTitle'),
              secondary: Icon(Icons.favorite),
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: Colors.purple,
              selected: _rValue==1?true:false,
            ),
            RadioListTile(
              value: 2,
              groupValue: _rValue,
              onChanged: (value){
                method(value);
              },
              title: Text('iOS'),
              subtitle: Text('SubTitle'),
              secondary: Icon(Icons.info_outline_sharp),
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: Colors.purple,
              selected: _rValue==2?true:false,
            ),
            RadioListTile(
              value: 3,
              groupValue:_rValue,
              onChanged: method,
              title: Text('Android'),
              subtitle: Text('SubTitle'),
              secondary: Icon(Icons.android),
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: Colors.purple,
              selected: _rValue==3?true:false,
            )
         ]
        ),
      ),
    );
  }
}

