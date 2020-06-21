import 'package:flutter/cupertino.dart';
import 'package:todolistflutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  final text;
  TaskList({this.text});
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      TaskTile(text: 'text task'),
      TaskTile(text: 'text task'),
      TaskTile(text: 'text task'),
      TaskTile(text: 'text task'),
      TaskTile(text: 'text task'),
      TaskTile(text: 'text task'),
    ]);
  }
}
