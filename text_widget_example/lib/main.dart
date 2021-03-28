import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Text Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Text Widget Example'),),
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
      child: Text.rich(
        TextSpan(
          text: 'Hi', // default style,
          children: [
            TextSpan(
              text: 'This is',
              style: TextStyle(color: Colors.red,fontSize: 18,)
            ),
            TextSpan(
                text: 'Text Example',
                style: TextStyle(color: Colors.green,fontSize: 15,)
            ),
          ]
        )
      )

    );
  }
}

/*
*
* Text(
        'Hi, This is Text Example ',
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
* */

