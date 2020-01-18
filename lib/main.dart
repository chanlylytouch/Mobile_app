import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_project/Dialogs.dart';

void main() => runApp(Project());

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dialogs(),
    );
  }
}
