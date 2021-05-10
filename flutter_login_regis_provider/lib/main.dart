import 'package:flutter/material.dart';
import 'package:flutter_login_regis_provider/providers/auth_provider.dart';
import 'package:flutter_login_regis_provider/providers/user_provider.dart';
import 'package:flutter_login_regis_provider/screens/dashboard.dart';
import 'package:flutter_login_regis_provider/screens/register.dart';
import 'package:flutter_login_regis_provider/utility/shared_preference.dart';
import 'package:provider/provider.dart';

import 'domain/user.dart';
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Future<User> getUserData () => UserPreferences().getUser();

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> AuthProvider()),
          ChangeNotifierProvider(create: (_)=>UserProvider())
        ],
      child:  MaterialApp(
        title: 'Login Registration',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return CircularProgressIndicator();
                default:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  else if (snapshot.data.token == null)
                    return Login();
                  else
                    Provider.of<UserProvider>(context).setUser(snapshot.data);
                    return DashBoard();

              }
            }),
        routes: {
          '/login':(context)=>Login(),
          '/register':(context)=>Register(),
          '/dashboard':(context)=>DashBoard()
        },
      ),
    );


  }
}



