import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/widgets/task_card.dart';

import '../providers/list_provider.dart';
import 'addnewtask.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  @override
  Widget build(BuildContext context)
  {
    final favoritetask = ref.watch(finaltaskProvider);
    Widget mainContent = const Center(
      child: Text('No Tasks found. Start adding some!'),
    );

    if (favoritetask.isNotEmpty) {
      mainContent = ListView.builder(
          itemCount: favoritetask.length,
          itemBuilder: (ctx, index) => TaskItem(favoritetask[index]));
    //using ListView.builder,u can run any function that takes the index as
      // a parameter,u can also pass data through push and pop
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
      ),
      body: Stack(
        children: [
          mainContent,
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                // Navigate to the NewTask widget when the floating button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewTaskScreen()),
                );
              },
              backgroundColor: Colors.blue,
              shape: const CircleBorder(eccentricity: 0.5),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
