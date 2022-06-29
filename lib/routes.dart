import 'dart:js';

import 'package:algoriza_task1/screens/login-screen.dart';
import 'package:algoriza_task1/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
