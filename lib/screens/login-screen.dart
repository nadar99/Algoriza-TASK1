import 'package:algoriza_task1/screens/components/form-buttons.dart';
import 'package:algoriza_task1/screens/components/form-footer.dart';
import 'package:algoriza_task1/screens/components/form-title.dart';
import 'package:algoriza_task1/screens/components/header.dart';
import 'package:algoriza_task1/screens/components/link-text.dart';
import 'package:algoriza_task1/screens/components/splash-button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
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
                flex: 3,
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
                          title2: "Sign in",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
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
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormButtons(
                          buttonText: "Sign In",
                        ),
                        FormFooter(
                          linkTextWidget: LinkText(
                            text: "Doesn't has any account?",
                            link: " Register here",
                          ),
                          footerText:
                              "using application according to policy rules, any kind of violations will be subjected to sanctions",
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
