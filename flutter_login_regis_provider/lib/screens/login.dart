
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_regis_provider/domain/user.dart';
import 'package:flutter_login_regis_provider/providers/auth_provider.dart';
import 'package:flutter_login_regis_provider/providers/user_provider.dart';
import 'package:flutter_login_regis_provider/utility/validator.dart';
import 'package:flutter_login_regis_provider/utility/widgets.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();

  String _userName, _password;


  @override
  Widget build(BuildContext context) {

    AuthProvider auth = Provider.of<AuthProvider>(context);

    var doLogin = (){

      final form = formKey.currentState;

      if(form.validate()){

        form.save();

        final Future<Map<String,dynamic>> respose =  auth.login(_userName,_password);

        respose.then((response) {
          if (response['status']) {

            User user = response['user'];

            Provider.of<UserProvider>(context, listen: false).setUser(user);

            Navigator.pushReplacementNamed(context, '/dashboard');

          } else {
            Flushbar(
              title: "Failed Login",
              message: response['message']['message'].toString(),
              duration: Duration(seconds: 3),
            ).show(context);
          }
        });


      }else{
        Flushbar(
          title: 'Invalid form',
          message: 'Please complete the form properly',
          duration: Duration(seconds: 10),
        ).show(context);
      }

    };


    final loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Login ... Please wait")
      ],
    );

    final forgotLabel = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.all(0.0),
          child: Text("Forgot password?",
              style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
//            Navigator.pushReplacementNamed(context, '/reset-password');
          },
        ),
        FlatButton(
          padding: EdgeInsets.only(left: 0.0),
          child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register');
          },
        ),
      ],
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Login'),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),
                  Text("Email"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    validator: validateEmail,
                    onSaved: (value)=> _userName = value,
                    decoration: buildInputDecoration('Enter Email',Icons.email),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Password"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    validator: (value)=> value.isEmpty?"Please enter password":null,
                    onSaved: (value)=> _password = value,
                    decoration: buildInputDecoration('Enter Password',Icons.lock),
                  ),
                  SizedBox(height: 20.0,),
                  auth.loggedInStatus == Status.Authenticating
                  ?loading
                  : longButtons('Login',doLogin),
                  SizedBox(height: 8.0,),
                  forgotLabel

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
