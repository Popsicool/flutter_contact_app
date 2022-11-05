
import 'package:flutter/material.dart';

import './signup.dart';
import './home.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(actions: [
        Text("Popsicool",
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.pink, fontFamily: 'Raleway',),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text("Sign out",
              style: TextStyle(
                  color: Colors.white
              )),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(), //<-- SEE HERE
            padding: EdgeInsets.all(20),
              backgroundColor: Colors.pink
          ),

        ),
      ],
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [

                    Text("My Profile",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.pink, fontFamily: 'Raleway',),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 50.0),
              child: Image.asset("images/img3.png"
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "I'm a Fullstack web developer in development stage, willing to add Mobile development to my arsenal"
                      ),
                    ),
                    Text("Name: Akinola Samson",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.pink, fontFamily: 'Raleway',),),
                    Text("Phone Number: 08069482021",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.pink, fontFamily: 'Raleway',),),

                  ],
                ),
              ),
            )



          ],

        ),
      ),
    );
  }
}