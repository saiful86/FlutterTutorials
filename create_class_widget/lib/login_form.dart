
import 'package:flutter/material.dart';

class LoginFormExFile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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