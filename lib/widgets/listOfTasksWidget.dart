import 'package:flutter/material.dart';

class ListOfTasks extends StatelessWidget {
  const ListOfTasks(
      {super.key, required this.tasks, required this.handleDelete});
  final List<String> tasks;
  final void Function(int index) handleDelete;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => handleDelete(index),
          ),
        );
      },
    );
  }
}
