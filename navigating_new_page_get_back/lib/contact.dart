import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Get back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
