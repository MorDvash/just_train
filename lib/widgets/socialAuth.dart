import 'package:flutter/material.dart';

class SocialAuth extends StatelessWidget {
  final String title;
  final Function continueWith;
  final Icon icon;

  SocialAuth({
    required this.title,
    required this.continueWith,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: icon,
      label: Text(title),
    );
  }
}
