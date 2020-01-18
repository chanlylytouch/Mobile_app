import 'package:flutter/material.dart';


class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Map<String, bool> values = {
    "Clean the home": false,
    "Go to school": false,
    "Do homework": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo list information"),
        centerTitle: true,
      ),
      body: ListView(
        children: values.keys.map((String key) {
          return CheckboxListTile(
              title: Text(key),
              value: values[key],
              onChanged: (bool check) {
                setState(() {
                  values[key] = check;
                });
              });
        }).toList(),
      ),
    );
  }
}
