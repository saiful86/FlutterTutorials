import 'package:flutter/material.dart';
import 'package:registrating_screen_as_main/page_1.dart';
import 'package:registrating_screen_as_main/page_2.dart';

void main() {
  runApp(MaterialApp(
      title: 'Drawer Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: Page2(),
  ));
}
