import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'TextField Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('TextField Widget Example'),),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String text = '';

  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
           decoration: InputDecoration(
             hintText: 'enter your name',
             labelText: 'Name',
             labelStyle: TextStyle(
               color: Colors.orange,
               fontSize: 18
             ),
             hintStyle:  TextStyle(
                 color: Colors.redAccent,
                 fontSize: 18
             ),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
             ),
             prefixIcon: Icon(Icons.account_circle),
             suffixIcon: IconButton(
                 icon:Icon(_secure?Icons.remove_red_eye:Icons.security),
                 onPressed: (){
                   setState(() {
                     _secure = !_secure;
                   });
                 },

             ),
             errorText: text.isEmpty?'Empty':null
           ),
            keyboardType: TextInputType.text,
            obscureText: _secure,
            obscuringCharacter: '*',
            maxLength: 10,
            //maxLines: 2,
            onChanged: (value){
              text = value;
            },
            onSubmitted: (value){
             setState(() {
               text = value;
             });

             print(value);
            },
          )
        ],
      ),
    );
  }
}


/*
* import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('TextField Widget Example'),),
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

  bool _secureText = false;
  TextEditingController _nameController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter number',
              labelText: 'Age',
              labelStyle: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
              border: OutlineInputBorder(),
              //border: UnderlineInputBorder(),
              //border: InputBorder.none,
              //fillColor: Colors.black45,
             // filled: true,
              prefixIcon: Icon(Icons.account_circle),
              suffixIcon: IconButton(
                icon: Icon(_secureText?Icons.remove_red_eye:Icons.security),
               onPressed: (){
                 setState(() {
                   _secureText = !_secureText;
                 });
               },
              ),
              errorText: text.isEmpty? 'Empty' : null
            ),
            keyboardType: TextInputType.name,
            obscureText: _secureText,
           // obscuringCharacter: '*',
            //maxLength: 10,
           // maxLines: 2,
            onChanged: (value){
              text = value;
              print(value);
            },
            onSubmitted: (value){
              print(value);
              setState(() {
                text = value;
              });

            }
          ),
          Form(
            key: _formKey,
            child: TextFormField(
              validator: ( value){
                if(value.isEmpty){
                  return "error";
                }else{
                  return null;
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed:(){
                print(_nameController.text);
                _formKey.currentState.validate();
              },
              child: Text('OK'))
        ],
      ),
    );
  }
}

* */
