import 'package:algoriza_task1/screens/components/form-buttons.dart';
import 'package:algoriza_task1/screens/components/form-footer.dart';
import 'package:algoriza_task1/screens/components/form-title.dart';
import 'package:algoriza_task1/screens/components/header.dart';
import 'package:algoriza_task1/screens/components/link-text.dart';
import 'package:algoriza_task1/screens/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Header(),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormTitle(
                          title1: "Welcome to fashion daily",
                          title2: "Register",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: new InputDecoration(
                            hintText: "Eg: example@email.com",
                            border: new OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        InternationalPhoneNumberInput(
                          hintText: "Eg: 1008546978",
                          inputBorder: OutlineInputBorder(),
                          selectorButtonOnErrorPadding: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            hintText: "Eg: example@email.com",
                            border: new OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormButtons(
                          buttonText: "Register",
                        ),
                        FormFooter(
                          linkTextWidget: LinkText(
                            text: "has any account?",
                            link: " Sign in here",
                            routName: LoginScreen.routeName,
                          ),
                          footerText:
                              "By registering your account, you are agree to our terms and conditions",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
