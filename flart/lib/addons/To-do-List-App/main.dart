import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flart/addons/To-do-List-App/body.dart';
import 'package:flart/addons/To-do-List-App/providers/todo_provider.dart';
import 'package:flart/addons/To-do-List-App/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      builder: (context, child) => const TodoList(),
    ),
  );
}

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const DefaultTabController(
          length: 3,
          child: Body(),
        ));
  }
}
