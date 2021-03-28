import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: 'Icon Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Icon Widget Example')),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int volumn =0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         width: 300,
         height: 300,
         color: Colors.white,
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Icon(
              Icons.volume_up,
              size: 50,
              color: Colors.red,
            ),
            IconButton(
              icon: Icon(Icons.volume_up,size: 30,),
              onPressed: (){
                print('On Pressed');
                setState(() {
                  volumn += 1;
                });

              },
            ),
            Text('$volumn')
          ],
        ),
      ),
    );
  }
}

