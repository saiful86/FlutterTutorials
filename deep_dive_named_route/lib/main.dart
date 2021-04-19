import 'package:deep_dive_named_route/main_page.dart';
import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deep Dive Named Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MainPage(),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>MainPage(),
        Page1.routeName:(ctx)=>Page1(),
        Page2.routeName:(ctx)=>Page2(),
        Page3.routeName:(ctx)=>Page3(),
      },
    );
  }
}



