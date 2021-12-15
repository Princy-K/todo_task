
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_task/model/items.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Items> items = [Items(1, AppLocalizations.of(context)!.swipe_right),Items(2, AppLocalizations.of(context)!.swipe_left),
      Items(3, AppLocalizations.of(context)!.swipe_down),Items(4, AppLocalizations.of(context)!.tap)];

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
                      label: AppLocalizations.of(context)!.delete,
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
                      label: AppLocalizations.of(context)!.complete,
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
