import 'package:flutter/material.dart';

class Contact extends StatelessWidget {

  String message = '';

  /*
    Contact(String message){
     this.message = message;
    }
   */

  //Contact({this.message});

  @override
  Widget build(BuildContext context) {

    var data = ModalRoute.of(context).settings.arguments as Map<String,Object>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('${data['id']}'),
            SizedBox(
              height: 10,
            ),
            Text('${data['name']}'),
            SizedBox(
              height: 10,
            ),
            Text('${data['phone']}'),
            SizedBox(
              height: 10,
            ),
            Text('${data['address']}'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Get back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
