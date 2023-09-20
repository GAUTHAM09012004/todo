import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../data/dummy_data.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

class Task {
  final String name;
  final Listtodo list;
  final DateTime date;

  Task(
    this.name,
    this.list,
    this.date,
  );
}
