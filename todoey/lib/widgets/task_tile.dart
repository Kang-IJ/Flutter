import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        // style: TextStyle(
        //   decoration:
        //       isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        //   color: isChecked ? Colors.grey.shade600 : null,
        // ),
      ),
      // trailing: TaskCheckbox(isChecked, checkboxCallback),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueGrey,
      value: isChecked,
      onChanged: (checkboxState) {
        setState(() {
          isChecked = checkboxState!;
        });
      },
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   late final bool checkboxState;
//   late final toggleCheckboxState;
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.blueGrey,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
