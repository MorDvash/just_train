import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final String title;

  AuthForm(this.title);
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email Address';
                }
                return null;
              },
            ),
            if (widget.title == 'Sign Up')
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Username';
                  }
                  return null;
                },
              ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
