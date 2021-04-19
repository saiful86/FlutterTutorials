import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  static const routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(' Page 2'),
          ],
        ),
      ),
    );
  }
}