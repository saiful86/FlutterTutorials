import 'package:flutter/material.dart';

class WithoutControllerVariable extends StatefulWidget {
  @override
  _WithoutControllerVariableState createState() => _WithoutControllerVariableState();
}

class _WithoutControllerVariableState extends State<WithoutControllerVariable> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold (
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Appbar Widget Example'),
            centerTitle: true,
            elevation: 30.0,
            shadowColor: Colors.amberAccent,
            toolbarOpacity: .9,
            //toolbarHeight: 62.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            leading: IconButton(
                icon:Icon(Icons.arrow_back),
                onPressed: (){Navigator.pop(context);},
            ),
            actions: [
              Icon(Icons.favorite),
              IconButton(icon: Icon(Icons.search), onPressed: (){print('search');}),
              Icon(Icons.more_vert)
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.card_travel),
                  text: 'Travel',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Shopping',
                )
              ],
            )
        ),

        body: TabBarView(
          children: [
            Center(child: Text("Person")),
            Center(child: Text("Travel")),
            Center(child: Text("Shopping")),
          ],
        ),

        bottomNavigationBar: Material(
          color: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          child: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.android_outlined),
              ),
              Tab(
                icon: Icon(Icons.android_outlined),
              ),
              Tab(
                icon: Icon(Icons.android_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
