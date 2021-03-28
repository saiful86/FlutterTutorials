import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Button Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Button Widget Example'),),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            RaisedButton(
              onPressed: (){print("onPressed");},
              child: Text('Click me'),
              color: Colors.blue,
            ),
            ElevatedButton(
                onPressed: (){print("onPressed");},
                child: Text('Click me')
            ),
            FlatButton(
              onPressed: (){print("onPressed");},
              child: Text('click me'),
            ),
            TextButton(
              onPressed: (){print("onPressed");},
              child: Text('Click me '),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.account_circle),
              onPressed: (){print("onPressed");},
              label: Text('Click me'),
            ),
            IconButton(
              icon: Icon(Icons.security),
              onPressed: (){print("onPressed");},
            ),

            FloatingActionButton(
                onPressed: (){print("onPressed");},
                child: Text('Click'),
            )
          ]
        ),
      ),
    );
  }
}
