import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Switch Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Switch Widget Example'),),
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

         child: Switch(
           value: _sValue,
           onChanged: (value){
             setState(() {
               _sValue = value;
             });
             print(value);
           },
           activeColor: Colors.purple,
           activeTrackColor: Colors.red,
           inactiveTrackColor: Colors.black,
         ),
        ),
      ),
    );
  }
}

