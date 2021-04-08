import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'SwitchListTile Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('SwitchListTile Widget Example'),),
        body: MyApp(),
      )
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _sValue = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          // width: 300,
          // height: 300,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple)
          ),

          child: SwitchListTile(
            value: _sValue,
            onChanged: (value){
              setState(() {
                _sValue = value;
              });
              print(value);
            },
            activeColor: Colors.purple,
            activeTrackColor: Colors.green,
            inactiveTrackColor: Colors.black,
            title: Text('Title'),
            subtitle: Text('Sub Title'),
            secondary: Icon(Icons.switch_right),
            selected: _sValue,
            controlAffinity: ListTileControlAffinity.trailing,

          ),

        ),
      ),
    );
  }
}

