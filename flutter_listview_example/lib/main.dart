import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/* -----------------------------------------
                   main method
-----------------------------------------*/
void main() => runApp(MyApp());

/* -----------------------------------------
                   MyApp
-----------------------------------------*/
class MyApp extends StatelessWidget {
  static final String title = 'ListView Deep Dive';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: title),
    );
  }
}

/* -----------------------------------------
                  HomePage
-----------------------------------------*/
class HomePage extends StatefulWidget {
  final String title;

  HomePage({@required this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final items = List.generate(100, (counter) => 'Item: $counter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildListViews(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Basic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Vertical',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            label: 'Horizontal',
          ),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
    );
  }

  Widget buildListViews() {
    if (index == 0) {
      return buildBasicListView();
    } else if (index == 1) {
      return buildVerticalListView();
    } else if (index == 2) {
      return buildHorizontalListView();
    } else {
      return Container();
    }
  }

  // Basic List View Builder method
  Widget buildBasicListView() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AK'),
          ),
          title: Text('Ab Karim'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AR'),
          ),
          title: Text('Ab Rarim'),
          subtitle: Text('Android Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AB'),
          ),
          title: Text('Abul'),
          subtitle: Text('iOS Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
      ],
    );
  }

  // Vertical List View Builder method
  Widget buildVerticalListView() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }

  // Horizontal List View Builder method
  Widget buildHorizontalListView() {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 50,
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
