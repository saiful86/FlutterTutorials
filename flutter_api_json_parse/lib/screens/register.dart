import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_api_json_parse/domain/user.dart';
import 'package:flutter_api_json_parse/providers/auth_provider.dart';
import 'package:flutter_api_json_parse/providers/user_provider.dart';
import 'package:flutter_api_json_parse/utility/validator.dart';
import 'package:flutter_api_json_parse/utility/widgets.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  final formKey = GlobalKey<FormState>();


  String _username , _password, _confirmPassword;

  @override
  Widget build(BuildContext context) {

    AuthProvider auth = Provider.of<AuthProvider>(context);

    var loading  = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    CircularProgressIndicator(),
    Text(" Registering ... Please wait")
    ],
    );

    var doRegister = (){
      print('on doRegister');

      final form = formKey.currentState;
      if(form.validate()){

        form.save();

        auth.loggedInStatus = Status.Authenticating;
        auth.notify();

        Future.delayed(loginTime).then((_) {
          Navigator.pushReplacementNamed(context, '/login');
          auth.loggedInStatus = Status.LoggedIn;
          auth.notify();
        });

        /*// now check confirm password
        if(_password.endsWith(_confirmPassword)){

          auth.register(_username, _password).then((response) {
            if(response['status']){
              User user = response['data'];
              Provider.of<UserProvider>(context,listen: false).setUser(user);
              Navigator.pushReplacementNamed(context, '/login');
            }else{
              Flushbar(
                title: 'Registration fail',
                message: response.toString(),
                duration: Duration(seconds: 10),
              ).show(context);
            }
          });

        }else{
          Flushbar(
            title: 'Mismatch password',
            message: 'Please enter valid confirm password',
            duration: Duration(seconds: 10),
          ).show(context);
        }*/

      }else{
        Flushbar(
          title: 'Invalid form',
          message: 'Please complete the form properly',
          duration: Duration(seconds: 10),
        ).show(context);
      }

    };

    return Scaffold(
        appBar: AppBar(title: Text('Registration'),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.0,),
                Text('Email'),
                TextFormField(
                  autofocus: false,
                  validator: validateEmail,
                  onSaved: (value) => _username = value,
                  decoration: buildInputDecoration("Enter Email", Icons.email),
                ),
                SizedBox(height: 20.0,),
                Text('Password'),
                SizedBox(height: 5.0,),
                TextFormField(
                  autofocus: false,
                  obscureText: true,
                  validator: (value)=>value.isEmpty?'Please enter password':null,
                  onSaved: (value) => _password = value,
                  decoration: buildInputDecoration("Enter Password", Icons.lock),
                ),
                SizedBox(height: 20.0,),
                Text('Confirm Password'),
                TextFormField(
                  autofocus: false,
                  obscureText: true,
                  validator: (value)=>value.isEmpty?'Your password is required':null,
                  onSaved: (value) => _confirmPassword = value,
                  decoration: buildInputDecoration("Enter Confirm Password", Icons.lock),
                ),
                SizedBox(height: 20.0,),
                auth.loggedInStatus == Status.Authenticating
                    ?loading
                    : longButtons('Register',doRegister)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
