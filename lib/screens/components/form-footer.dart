import 'package:algoriza_task1/screens/components/link-text.dart';
import 'package:flutter/material.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({
    Key key,
    this.linkTextWidget,
    this.footerText,
  }) : super(key: key);
  final LinkText linkTextWidget;
  final String footerText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 8), child: linkTextWidget),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            this.footerText,
            style: TextStyle(color: Colors.grey, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
