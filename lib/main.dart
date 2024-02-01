
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screen/screens/ChangePasswordScreen.dart';
import 'package:screen/screens/LogInScreen.dart';
import 'package:screen/screens/deleteAccount.dart';
import 'package:screen/screens/logout.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScreen(),
  ));
}
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> _pickImage() async {
    final XFile? selectedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Icon(Icons.person),
            Text('Profile'),
          ],
        ),
        backgroundColor: Color(0xFF6FA1A2),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //SizedBox(height: 1.0),
              CircleAvatar(
                radius: 70,
                backgroundImage:AssetImage('assets/images/profilePicture.png'),
                // _imageFile != null ? FileImage(File(_imageFile!.path)) : null,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(

                    backgroundColor: Color(0xFFF3F4F9),
                    radius: 12,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, size: 25, color: Colors.grey),
                      onPressed: _pickImage,
                    ),
                  ),
                ),
              ),



              SizedBox(height: 20.0),
              Text('Edit Profile',style: TextStyle(fontSize: 20),),
              SizedBox(height: 20.0),
              SizedBox(
                width: 250,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'user Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 250,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6FA1A2), // Set the desired color
                    ),
                    child: Text('Logout')
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteAccountScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6FA1A2), // Set the desired color
                  ),
                  child: Text('Delete Account'),
                ),
              ),

              SizedBox(height: 20.0),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6FA1A2), // Set the desired color
                  ),
                  child: Text('Change password'),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

















