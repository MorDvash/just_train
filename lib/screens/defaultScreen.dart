import 'package:flutter/material.dart';
import 'package:just_train/screens/authScreen.dart';

class DefaultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const signUp = 'Sign Up';
    const logIn = 'Log In';
    return Scaffold(
      appBar: AppBar(
        title: Text('Just-train'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.ravishly.com/sites/default/files/images/article/2019-02/ThinkstockPhotos-468833082.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Text('Just-Train'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AuthScreen.routeName, arguments: signUp);
                },
                child: const Text('Sign Up'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AuthScreen.routeName, arguments: logIn);
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
