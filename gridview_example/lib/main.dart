import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "GridView Example",
    home: Scaffold(
      appBar: AppBar(title: Text("GridView Example"),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<int> list = List();

  @override
  void initState() {
    for(int i=0; i<=50; i++){
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext cxt, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('${list[index]}'),
          ),
        );
      },
    );
  }
}

/*
* GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Hi'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text('Hi'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Hi'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Hi'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Hi'),
          ),
          Container(
            color: Colors.green,

            alignment: Alignment.center,
            child: Text('Hi'),
          ),

        ],
    );
* */



