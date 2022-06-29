import 'package:algoriza_task1/screens/components/splash-button.dart';
import 'package:algoriza_task1/screens/login-screen.dart';
import 'package:flutter/material.dart';

class FormButtons extends StatelessWidget {
  const FormButtons({
    Key key,
    this.buttonText,
  }) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          // margin: EdgeInsets.all(15),
          child: SplashButton(
            text: buttonText,
            forground: Colors.white,
            background: Colors.blue,
            raduis: 5,
            padding: 15,
            onPress: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Or",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: null,
            style: ButtonStyle(
              side: MaterialStateProperty.all(BorderSide(
                color: Colors.blue,
                style: BorderStyle.solid,
              )),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google-icon.png",
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign in with google",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
