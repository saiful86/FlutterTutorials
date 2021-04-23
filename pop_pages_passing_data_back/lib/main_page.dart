import 'package:flutter/material.dart';
import 'page_1.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popping Pages & Passing Data Back '),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Go To Page 1'),
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page1()))
                    .then((value) => print(value));

              },
            ),
          ],
        ),
      ),
    );
  }
}
