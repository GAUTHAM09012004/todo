import 'package:riverpod/riverpod.dart';
import 'package:todo/data/dummy_data.dart';

import '../models/items.dart';

class ListNotifier extends StateNotifier<List<Task>> {
  ListNotifier() : super(finallist);
  void addtodo(String name, Listtodo list, DateTime date)
  {
    final newItem = Task(name, list, date);
    state = [...state, newItem];
  }
}
final finaltaskProvider = StateNotifierProvider<ListNotifier,List<Task>>((ref) {
  return ListNotifier();
});
