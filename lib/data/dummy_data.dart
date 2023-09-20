import '../models/items.dart';

enum Listtodo { personal, shopping, studies, work }

List<Task> finallist = [
  Task('maths', Listtodo.studies, DateTime(2023, 7, 25, 15, 30)),
  Task('cricket', Listtodo.personal, DateTime(2023, 7, 25, 15, 30)),
  Task('meat', Listtodo.shopping, DateTime(2023, 7, 25, 15, 30))
];
