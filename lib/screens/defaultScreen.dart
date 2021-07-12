import 'package:flutter/material.dart';
import 'package:just_train/screens/authScreen.dart';

class DefaultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Just-train'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Just-Train'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AuthScreen.routeName);
              },
              child: const Text('Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AuthScreen.routeName);
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
