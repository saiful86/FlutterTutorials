import 'package:drawer_widget_example/page_1.dart';
import 'package:drawer_widget_example/page_2.dart';
import 'package:drawer_widget_example/page_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Drawer Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('xyz'),
              accountEmail: Text('xyz@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('X'),
              ),
              decoration: BoxDecoration(color: Colors.purple),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text('X'),
                ),
                CircleAvatar(
                  child: Text('X'),
                )
              ],
            ),
            ListTile(
              title: Text('Page1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('Page1');
                Navigator.push(context, MaterialPageRoute(builder:(cnx){return Page1();}));
              },
            ),
            ListTile(
                title: Text('Page2'),
                trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('Page2');
                Navigator.push(context, MaterialPageRoute(builder:(cnx){return Page2();}));
              },
            ),

            ListTile(
                title: Text('Page3'),
                trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('Page3');
                Navigator.push(context, MaterialPageRoute(builder:(cnx){return Page3();}));
              },
            )
          ],
        ),
      ),
      body: Center(child: Text('Home Page'),),
    );
  }
}
