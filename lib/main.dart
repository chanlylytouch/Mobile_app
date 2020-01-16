import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_app/Modal.dart';
void main() => runApp(Demo_modal());
class Demo_modal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Modal(
        
      ),
    );
  }
}