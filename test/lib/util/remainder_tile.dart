// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget
{
  final String taskName;
  final bool isChecked;
  Function(bool?)? onChanged;
  Function(BuildContext)? slideAction;

   ToDoTile({super.key,
     required this.taskName,
     required this.isChecked,
     required this.onChanged,
     required this.slideAction
   });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,right:8,left:8),
      child: Slidable(
        endActionPane: ActionPane(
          motion:StretchMotion(),
          children: [
            SlidableAction(onPressed: slideAction,
            backgroundColor: Colors.red,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(20),
            ),
          ],
        ),
        child: Container(
                      decoration: BoxDecoration(color:Color.fromARGB(86, 12, 29, 158),borderRadius:  BorderRadius.circular(20)),
                      height: 80,
                            child:Padding(
                              padding: const EdgeInsets.only(top:5.0,left: 10),
                              child: Row(
                                children: [
                                   Checkbox(
                                    side: BorderSide(color: Color.fromARGB(255, 210, 206, 218)),
                                    value: isChecked, 
                                    onChanged: onChanged,
                                    shape: CircleBorder(),
                                    checkColor: Color.fromARGB(255, 210, 206, 218),
                                    activeColor:Colors.transparent ,
                                    ),
                                   Text (taskName,
                                   style: TextStyle(
                                    color:Color.fromARGB(255, 210, 206, 218),
                                    fontSize: 20,
                                    decoration:isChecked?TextDecoration.lineThrough:TextDecoration.none,decorationColor: Color.fromARGB(255, 210, 206, 218),)),
                                ],
                              ),
                            ),
                            ),
      ),
                        );
  }
}