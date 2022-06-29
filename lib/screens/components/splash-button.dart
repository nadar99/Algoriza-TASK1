import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton(
      {this.text,
      this.forground,
      this.background,
      this.raduis,
      this.padding,
      this.onPress});
  final String text;
  final Color forground, background;
  final double raduis, padding;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 15),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(padding)),
        foregroundColor: MaterialStateProperty.all<Color>(forground),
        backgroundColor: MaterialStateProperty.all<Color>(background),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduis),
          ),
        ),
      ),
      onPressed: onPress,
    );
  }
}
