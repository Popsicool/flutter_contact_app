
import 'package:flutter/material.dart';

import './signup.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [

                    Text("Popsicool",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.pink, fontFamily: 'Raleway',),
                    ),
                    Text("'We make your life cool'",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        color: Colors.red, fontFamily: 'Raleway',),)
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 50.0),
              child: Image.asset("images/img1.png"
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Text("Create Your Account",
              style: TextStyle(
                color: Colors.white
              )),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(), //<-- SEE HERE
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.pink,
              ),

            ),

          ],

        ),
      ),
    );
  }
}