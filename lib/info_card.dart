import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({super.key, required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(context){
    return GestureDetector(
      child: Card( 
        color : Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child : ListTile( 
        leading:Icon(
          icon,
          color: Colors.white,),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
          ),) ),
    );
  }
}