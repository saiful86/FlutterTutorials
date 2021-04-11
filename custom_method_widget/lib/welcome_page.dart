import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "WELCOME TO XYZ",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Image.asset(
                    "assets/images/food_order.png",
                    height: 200,
                  ),
                ),
                SizedBox(height: 10 ),
                loginMethod(),
                signUpMethod(),
              ],
          ),
        ),
        ),
      ),
    );
  }

  // Login Button Method Widget
  Widget loginMethod(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          color: Colors.blue,
          onPressed: (){},
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  // Signup button method widget
  Widget signUpMethod (){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          color: Colors.blue,
          onPressed: (){},
          child: Text(
            'Sign up',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

}

