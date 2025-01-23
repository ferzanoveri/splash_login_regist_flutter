import 'package:flutter/material.dart';
import 'package:flutter_project_5/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          content()
        ],
      ),
    );
  }

  Widget content(){
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
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset("assets/image.png"),
          ),
        ),
        Text(
          'Register',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        SizedBox(height: 40),
        inputStyle('Username', 'test@gmail.com'),
        inputStyle('Password', 'abcD1234'),
        inputStyle('Confirm Password', 'abcD1234'),
        inputStyle('Location', 'Canada'),
        inputStyle('Identification Number', 'C-12333'),
        SizedBox(height: 20,),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(20)
          ),
          child: TextButton(
            onPressed: (){},
            child: Text(
              'Register',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(20)
          ),
          child: TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text(
              'Back to Login',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
        ),
        SizedBox(height: 40,)
      ]
    );
  }
}
