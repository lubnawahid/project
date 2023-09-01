import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
Container(
  height: 400,
  child: Stack(
    children: [
      Positioned(
          child:Container(
            
          )
      )
    ],
  ),
)
        ],
      ),
    )
  }
}
