import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Card Example',
    home: Scaffold(
      appBar: AppBar(title: Text('Card Example'),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 5,
      shadowColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
          color: Colors.red,
          width: 2
        )
        
      ),
      child: Container(
        height: 300,
        width: 300,
      ),
    );
  }
}


