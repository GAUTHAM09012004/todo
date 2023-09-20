import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/items.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  String formatDate(DateTime dateTime) {
    return DateFormat.yMMMMd().format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(task.list.toString().split('.').last,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              formatDate(task.date),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
