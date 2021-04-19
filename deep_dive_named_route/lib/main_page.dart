import 'package:flutter/material.dart';
import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deep Dive Named Route '),
      ),
      body:Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Go To Page 1'),
              onPressed: () {
                Navigator.of(context).pushNamed( Page1.routeName);
              },
            ),
            ElevatedButton(
              child: Text('Go To Page 2'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
            ),
            ElevatedButton(
              child: Text('Go To Page 3'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page3.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}