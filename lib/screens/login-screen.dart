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
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/background.png"),
                      ),
                    ),
                  )),
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
                        // SizedBox(
                        //   height: 15,
                        // ),
                        Text(
                          "Welcome to fashion daily",
                          style: TextStyle(color: Colors.grey),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
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
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Container(
                          width: double.infinity,
                          // margin: EdgeInsets.all(15),
                          child: SplashButton(
                            text: "Sign In",
                            forground: Colors.white,
                            background: Colors.blue,
                            raduis: 5,
                            padding: 15,
                            onPress: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            },
                          ),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "Or",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
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
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: LinkText(
                            text: "Doesn't has any account?",
                            link: " Register here",
                          ),
                        ),
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
