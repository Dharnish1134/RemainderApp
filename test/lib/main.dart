// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:test/pages/FirstPage.dart';

void main() {
  runApp(MyApp());

}
Widget settings()
{
   return Container(
        height: 100,width: 100,
        decoration:BoxDecoration(color:Color.fromARGB(88, 25, 45, 193),
        borderRadius: BorderRadius.circular(20)),margin: EdgeInsets.all(4),
       );
}

void buttonpress()
{
  
}
class MyApp extends StatelessWidget{
    MyApp ({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: First(),
      routes:{
        '/First':(context) => First(),
      },
      );
      
}
 
}