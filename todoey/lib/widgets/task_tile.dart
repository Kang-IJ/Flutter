import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
          color: isChecked == true ? Colors.grey.shade500 : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  late final bool? checkboxState;
  late final Function(bool?) toggleCheckboxState;

  TaskCheckbox({this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueGrey,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}

// class TaskCheckbox extends StatefulWidget {
//   @override
//   State<TaskCheckbox> createState() => _TaskCheckboxState();
// }

// class _TaskCheckboxState extends State<TaskCheckbox> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.blueGrey,
//       value: isChecked,
//       onChanged: (checkboxState) {
//         setState(() {
//           isChecked = checkboxState!;
//         });
//       },
//     );
//   }
// }
