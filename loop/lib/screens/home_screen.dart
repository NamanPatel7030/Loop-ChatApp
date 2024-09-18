import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Image.asset("images/infinity.png",
        width: 60,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          )
        ],
      
      ),
      
      floatingActionButton: Padding(
        padding:EdgeInsets.only(bottom:20,right: 20),
        child: FloatingActionButton(
          onPressed: (){},child:Icon(Icons.all_inclusive_sharp)),
      ),
    );

     
  }
}