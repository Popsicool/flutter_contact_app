
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
        backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30, top:15),
                    child: Text("Popsicool",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.pink, fontFamily: 'Raleway',),),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom:30),
                    child: Text("Sign up",
                      style: TextStyle(
                      fontSize: 15,
                      color: Colors.red, fontFamily: 'Raleway',
                      ),),
                  )
                ],
              ),
            ),
          ),
          Container(
          child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
                keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'last Name',
              ),
              keyboardType: TextInputType.text,
            ),
            TextField(
            decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'email address',
          ),
              keyboardType: TextInputType.emailAddress,
    ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            )
    ],
          ),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("Sign up"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: BeveledRectangleBorder(

                ), //<-- SEE HERE
                padding: EdgeInsets.all(10),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("Alreay have an Account? go to login",
                style: TextStyle(
                  color: Colors.pink,
                )),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(),
                backgroundColor: Colors.white//<-- SEE HERE

              // padding: EdgeInsets.only(left:70, right:70, top:20, bottom: 20),
            ),

          ),
        ],
      ),
    )
    );
  }
}