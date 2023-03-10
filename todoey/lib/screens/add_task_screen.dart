import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? addedTask;
    Color getColor(Set<MaterialState> states) {
      return Colors.blueGrey;
    }

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
              ),
              TextField(
                controller: controller,
                onChanged: (value) {
                  addedTask = value;
                },
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blueGrey),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    if (addedTask?.isNotEmpty == true) {
                      context.read<TaskData>().addTasks(addedTask);
                      controller.clear();
                      Navigator.pop(context);
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith(getColor)),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
