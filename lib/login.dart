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
        SizedBox(height: 40),
        inputStyle('Username', 'Enter your username'),
        SizedBox(height: 20,),
        inputStyle('Password', 'Enter your password'),
      ],
    );
  }
}

Widget inputStyle(String title, String hintText){
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
    child: Row(
      children: [
        Text(
          "$title :",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3)
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10),
                hintText: hintText
              ),
            ),
          ),
        )
      ],
    ),
  );
}
