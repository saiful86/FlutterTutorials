import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  static const routeName = '/page1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(' Page 1'),
          ],
        ),
      ),
    );
  }
}
