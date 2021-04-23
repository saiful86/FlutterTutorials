import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {

  static const routeName = '/page1';

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

 String backData = 'back data';

 void _onBackPressed(){
   Navigator.of(context).pop(backData);
 }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _onBackPressed();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Page 1'),),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 80),
            child: Column(
                children : [
                  ElevatedButton(
                    child: Text('Back to main page'),
                    onPressed: () {
                      _onBackPressed();
                    },
                  ),
                ]
            ),
        ),
      ),
    );
  }
}