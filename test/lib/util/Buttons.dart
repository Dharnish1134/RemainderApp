// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class buttons extends StatelessWidget
{
   String text = "";
   VoidCallback onChanged;
   buttons({super.key,
   required this.text,
   required this.onChanged});


   @override
   Widget build(BuildContext context) 
   {
      return  TextButton(onPressed: onChanged, child: Text(text,style: TextStyle(color: Color.fromARGB(255, 210, 206, 218),fontSize: 20),));
   }
}