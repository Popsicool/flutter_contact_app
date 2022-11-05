
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signup.dart';
import './forget.dart';
import './profile.dart';

class Login extends StatelessWidget{
  const Login({super.key});
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
                  margin: EdgeInsets.only(left:50, right:50, top:10),
                  padding: EdgeInsets.only(left:50, right:50, top:10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Text("Popsicool",
                          style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.pink, fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:30),
                        child: Text("Login page",
                          style: TextStyle(
                            fontSize: 10,
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
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Forget()),
                            );
                            },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:30, bottom: 30),
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: Text("Log in"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: BeveledRectangleBorder(

                    ), //<-- SEE HERE
                    padding: EdgeInsets.all(20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text("No Account yet? sign up here",
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