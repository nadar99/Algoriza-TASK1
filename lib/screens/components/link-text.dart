import 'package:algoriza_task1/screens/login-screen.dart';
import 'package:algoriza_task1/screens/register-screen.dart';
import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    Key key,
    this.link,
    this.text,
    this.routName,
  }) : super(key: key);
  final String text, link, routName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, routName);
          },
          child: Text(
            link,
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
