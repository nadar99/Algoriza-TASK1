import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({Key key, this.title1, this.title2}) : super(key: key);
  final String title1, title2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          title2,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
