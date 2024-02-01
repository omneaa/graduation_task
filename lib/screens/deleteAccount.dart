import 'package:flutter/material.dart';
import 'package:screen/main.dart';
import 'package:screen/screens/logout.dart';
import 'package:screen/screens/signUp.dart';

class DeleteAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Column(
          children: [
            Icon(Icons.person),
            Text('Delete Account'),

          ],
        ),
        backgroundColor: Color(0xFF6FA1A2),

        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 350.0,
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF6FA1A2),


          ),


          child: Center(
            child: Column(

              //mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                //Center(

                  //child:


                Icon(Icons.delete_rounded,color: Colors.red,size: 60),
                SizedBox(height: 100.0),
                  Text(
                    'You Are About To Delete Your Account',
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),

                  //Icon(Icons.delete, color: Colors.red),

                //),
                SizedBox(height: 20.0),
                Text(
                  'Are you sure?',
                  style: TextStyle(fontSize: 20,color: Colors.white70),
                ),
                SizedBox(height: 80.0),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(width: 100.0),

                    ElevatedButton(
                      child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 16)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfileScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6FA1A2), // Set the desired color
                      ),

                    ),
                    SizedBox(width: 40.0),
                    ElevatedButton(
                      child: Text('Delete', style: TextStyle(color: Colors.white,fontSize: 16)),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Set the desired color
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
