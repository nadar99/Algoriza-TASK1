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
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "using application according to policy rules, any kind of violations will be subjected to sanctions",
            style: TextStyle(color: Colors.grey, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
