
import 'package:flutter/material.dart';
import 'package:loop/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {


    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        
        title: Text("Login"),
        ),
      body:Stack(children: [
        Positioned(
          top: mq.height*0.15,
          left: mq.width*0.25,
          width: mq.width*0.5,
          child: Image.asset("images/google.png")),
          Positioned(
          bottom: mq.height*0.15,
          left: mq.width*0.25,
          width: mq.width*0.5,
          child: ElevatedButton.icon(onPressed:(){},icon:Image.asset("images/google.png"), label:))
      ],) ,
    );

    0;
  }
}