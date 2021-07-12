import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_train/widgets/authForm.dart';
import 'package:just_train/widgets/dividerWithText.dart';
import 'package:just_train/widgets/socialAuth.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('logIn'),
        ),
        body: Column(
          children: [
            AuthForm(),
            DividerWithText(),
            SocialAuth(
                title: 'Continue with Apple',
                continueWith: () {},
                icon: Icon(Icons.apartment)),
            SocialAuth(
                title: 'Continue with Google',
                continueWith: () {},
                icon: Icon(Icons.shopping_cart)),
            SocialAuth(
                title: 'Continue with Facebook',
                continueWith: () {},
                icon: Icon(Icons.facebook)),
          ],
        ));
  }
}
