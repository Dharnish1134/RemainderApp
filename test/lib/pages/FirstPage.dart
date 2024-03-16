// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:test/util/_dialogue_box.dart';
import 'package:test/util/remainder_tile.dart';

class First extends StatefulWidget {
  First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final _controller = TextEditingController();
  List toDolist = [];
   
  void createnew()
  {     setState(() {
        toDolist.add([_controller.text,false]);
        _controller.clear();
      });
      Navigator.of(context).pop();
  }
  void checkstate(bool? value, index) {
    setState(
      () {
        toDolist[index][1] = !toDolist[index][1];
      },
    );
  }

  void createDialogue() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          create: createnew,
          cancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }
  
  void deletetask(int index)
  {
    setState(() {
      
     toDolist.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 206, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 210, 206, 218)),
        backgroundColor: Color.fromARGB(86, 12, 29, 158),
        elevation: 1,
        title: Text(
          "Remainder",
          style: TextStyle(color: Color.fromARGB(255, 210, 206, 218)),
        ),
        leading: Icon(Icons.notification_add),
      ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: toDolist[index][0],
              isChecked: toDolist[index][1],
              onChanged: (value) => checkstate(value, index),
              slideAction: (context) => deletetask(index),
              );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
        child: FloatingActionButton(
          onPressed: createDialogue,
          foregroundColor: Color.fromARGB(255, 210, 206, 218),
          backgroundColor: Color.fromARGB(86, 12, 29, 158),
          shape: CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
