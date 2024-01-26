import 'package:flutter/material.dart';
import 'package:screen/screens/ForgotPasswordScreen.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Icon(Icons.person),
              Text('Change Password'),
            ],
          ),
        ),
      ),
      body: Center(
        child: ChangePasswordForm(),
      ),
    );
  }
}

class ChangePasswordForm extends StatefulWidget {
  @override
  ChangePasswordFormState createState() {
    return ChangePasswordFormState();
  }
}

class ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Container(
        width: 300,
        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60.0),

        TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Current Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set focused border color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set enabled border color to red
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your current password';
                }
                return null;
              },
              obscureText: true,
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _newPasswordController,
              decoration: InputDecoration(
                labelText: 'New Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set focused border color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set enabled border color to red
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your new password';
                }
                return null;
              },
              obscureText: true,
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Re-type New Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set focused border color to red
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Set enabled border color to red
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please re-type your new password';
                }
                if (value != _newPasswordController.text) {
                  return 'New password and re-typed password do not match';
                }
                return null;
              },
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text('Change Password'),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                );
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
