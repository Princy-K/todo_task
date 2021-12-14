import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('${items[1].color}');
    return Scaffold(
        backgroundColor: Colors.black,
        body: ReorderableListView(
          children: List.generate(
              items.length,
              (index) => Slidable(
                key: Key('$index'),
                startActionPane:ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {
                        setState(() {
                          items.removeAt(items[index].id);
                        });
                      },
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {
                        setState(() {
                          final item = items.removeAt(index);
                          items.insert(items.length, item);
                          items[index].color=Colors.transparent;
                        });
                      },
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      icon: Icons.assignment_turned_in,
                      label: 'Complete',
                    ),
                  ],
                ),
                child: ListTile(
                  tileColor: items[index].color,
                  title: Text(
                    items[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
        ));
  }
}
