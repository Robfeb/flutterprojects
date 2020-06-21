import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todolistflutter/models/task.dart';
import 'package:todolistflutter/models/task_data.dart';
import 'package:todolistflutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (value) {
                setState(() {
                  taskData.tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
