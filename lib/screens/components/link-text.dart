import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    Key key,
    this.link,
    this.text,
  }) : super(key: key);
  final String text, link;
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
        Text(
          link,
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
