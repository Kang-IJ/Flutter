import 'package:flutter/foundation.dart';
import 'task.dart';
import 'package:collection/collection.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTasks(String? addedTask) {
    _tasks.add(Task(name: addedTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTasks(Task task) {
    _tasks.removeWhere((tasks) => tasks == task);
    notifyListeners();
  }
}
