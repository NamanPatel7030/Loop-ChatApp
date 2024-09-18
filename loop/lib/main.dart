import 'package:flutter/material.dart';
import 'package:loop/screens/auth/login_screen.dart';
import 'package:loop/screens/home_screen.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Loop',
      theme: ThemeData(

      appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 1,
       titleTextStyle: TextStyle(color: Color.fromARGB(255, 82, 82, 82),fontSize: 20,fontWeight: FontWeight.bold),
      backgroundColor: Color.fromARGB(255, 210, 210, 210),
        )

      ),
      home: LoginScreen(),
     
    );
  }
}



