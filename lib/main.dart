import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_5/splash.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      // '/register': (context) => Register()
    },
  ));
}