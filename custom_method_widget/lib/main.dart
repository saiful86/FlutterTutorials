import 'package:custom_method_widget/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Method Widget Example',
    theme: ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: WelcomePage(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Method Widget Example'),),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Text(
                  'Login page',
                  style: TextStyle(fontSize: 25,color: Colors.purple,fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 15,),
                loginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Create Method Widget
 Widget loginForm(){
    return Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your user name',
                labelText: 'User Name',
                labelStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 14
                ),
                hintStyle:  TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 14
                ),
                hintStyle:  TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){print('on pressed');}, child: Text('Login'))
          ],
        ),
      ),
    );
  }


}

