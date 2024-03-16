// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/util/Buttons.dart';

class DialogBox extends StatelessWidget {
  final  controller;
  VoidCallback create;
  VoidCallback cancel;
   DialogBox({super.key,
  required this.controller,
  required this.create,
  required this.cancel,});

  void selectDate()
  {
      // ignore: avoid_print
      print("hi\n");
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(86, 12, 29, 158),
      content: Container(
        height: 170,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0,),
          child:  Column(
            children: [
              TextField(
                controller: controller,
                style: TextStyle(color:Color.fromARGB(255, 210, 206, 218),),
                decoration: InputDecoration(
                  labelText: "Task",
                  labelStyle: TextStyle(color:Color.fromARGB(255, 210, 206, 218) ),
                  //suffix: IconButton(onPressed: () => selectDate(), icon: Icon(Icons.date_range),color: Color.fromARGB(255, 210, 206, 218),alignment: Alignment.center,),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 210, 206, 218)),
                        borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter a Task...",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 210, 206, 218)),
                ),
              ),
              IconButton(onPressed: (){selectDate();}, icon: Icon(Icons.date_range),color: Color.fromARGB(255, 210, 206, 218),),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                         buttons(text: "cancel", onChanged: cancel),
                         buttons(text: "create", onChanged: create),
                  ],
                ),
            ],
              ),

          ),
        ),
      );
  }
}
