import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Adding Custom Font Example',
    theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Adding Custom Font Example'),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 300,
        color: Colors.grey,
        child: Text(
          'Hi, This is Text ',
          textAlign: TextAlign.center,
          // textScaleFactor: 2.0,
          //overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              color: Colors.red,
              fontSize: 22,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
              wordSpacing: 10,
              fontFamily: 'Roboto'
          ),
        ),
    );
  }
}


