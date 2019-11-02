import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Button app"),
      ),
      drawer: Drawer(
        
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){},
            child: Text("Button App"),
            color: Colors.orange,
            textColor: Colors.white,
          ) ,
          ),
      ),
    ),
  ),
);