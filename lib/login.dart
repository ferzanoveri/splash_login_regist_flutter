import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset("assets/image.png"),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
          child: Row(
            children: [
              Text("Username"),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  child: TextField(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
