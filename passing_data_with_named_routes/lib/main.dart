import 'package:flutter/material.dart';
import 'contact.dart';

void main() {
  runApp(MaterialApp(
    title: 'Passing Data with named route',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
    routes: {'/contact': (ctx) => Contact()},
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data With Named Route'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Go to Contact page'),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (cxt)=> Contact(message:"Hello")));
              //Navigator.pushNamed(context, '/contact');
              // Emp id, name , phone , address
              Navigator.of(context).pushNamed(
                '/contact',
                arguments: {
                  'id':1,
                  'name':"xyz",
                  'phone':02154782,
                  'address':"xyz"
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
