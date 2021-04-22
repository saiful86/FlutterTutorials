
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deep Dive Named Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>Login(),
        Home.routeName:(ctx)=>Home(),
      },
    );
  }
}



