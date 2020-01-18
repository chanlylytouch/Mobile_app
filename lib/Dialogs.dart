import 'package:flutter/material.dart';
import 'package:todolist_project/TodoList.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  modailog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          TextEditingController todoController = TextEditingController();
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text("Todo List"),
            content: TextField(
              autofocus: true,
              controller: todoController,
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text(
                  "Add New",
                  style: TextStyle(color: Colors.blue, fontSize: 18.0),
                ),
                onPressed: () {
                  Navigator.of(context).pop(todoController.text.toString());
                 print(todoController.text.toString());
                
                },
              ),
              MaterialButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.blue, fontSize: 18.0),
                ),
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => TodoList()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => modailog(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
