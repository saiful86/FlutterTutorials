import 'package:flutter/material.dart';

import 'contact.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigating Page',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigating Page'),),
      body: Center(
        child: Container(
           child: ElevatedButton(
             child: Text('Go to Contact page'),
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (cxt)=> Contact()));
            },
           ) ,

        ),
      ),
    );
  }
}

