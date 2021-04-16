import 'package:flutter/material.dart';
import 'contact.dart';

void main() {
  runApp(MaterialApp(
    title: 'Passing Data',
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
      appBar: AppBar(title: Text('Passing Data Via the Constructor'),),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Go to Contact page'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (cxt)=> Contact(message:"Hello")));
            },
          ) ,

        ),
      ),
    );
  }
}

