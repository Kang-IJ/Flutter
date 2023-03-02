import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? isChecked = false;
  final String taskTitle;
  final Function(bool?) checkboxCallback;

  TaskTile(
      {this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
          color: isChecked == true ? Colors.grey.shade500 : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
