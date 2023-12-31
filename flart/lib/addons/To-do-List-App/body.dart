import 'package:flutter/material.dart';
import 'package:flart/addons/To-do-List-App/pages/completed_todos.dart';
import 'package:flart/addons/To-do-List-App/pages/deleted_todos.dart';
import 'package:flart/addons/To-do-List-App/pages/todos.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Todo List",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              tabs: const [
                Tab(
                  text: "Todo",
                ),
                Tab(
                  text: "Completed",
                ),
                Tab(
                  text: "Deleted",
                )
              ],
            ),
          ),
          body: const TabBarView(children: <Widget>[
            TodosPage(),
            CompletedTodosPage(),
            DeletedTodosPage()
          ]),
        ));
  }
}
