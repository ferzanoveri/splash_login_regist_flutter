import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  startTimer() {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: Image.asset(
          "assets/image.png",
          height: 10,
          width: 10,
        ),
      ),
    );
  }
}
