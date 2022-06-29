import 'package:algoriza_task1/screens/components/splash-button.dart';
import 'package:algoriza_task1/screens/components/splash-content.dart';
import 'package:algoriza_task1/screens/login-screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "title": "Get food delivery to your doorstep asap",
      "subtitle":
          "We have young and professional delivery team that will bring you food as soon as possible to your doorstep",
      "image": "assets/images/splash-screen1.png"
    },
    {
      "title": "Buy any food from your favorite resturants",
      "subtitle":
          "We are constantly adding yout favorite resturants throughout the territory and around your area carefully selected",
      "image": "assets/images/splash-screen2.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: SplashButton(
                text: "Skip",
                forground: Colors.black,
                background: Colors.orange.shade50,
                raduis: 15,
                padding: 15,
                onPress: () {},
              ),
            ),
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 150,
          ),
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      title: splashData[index]["title"],
                      subtitle: splashData[index]["subtitle"],
                    )),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: SplashButton(
              text: "Get started",
              forground: Colors.white,
              background: Colors.teal.shade300,
              raduis: 10,
              padding: 20,
              onPress: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "Don't have an account? Sign Up",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
