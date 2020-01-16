import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String _message ="";
  void textChange(String text){
    setState(() {
      _message = text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextFormField(
                onChanged: (String text){
                  textChange(text);
                },
                decoration: InputDecoration(
                  labelText: "Enter your text",
                ),
              ),
            ),
            Text (_message,style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontWeight: FontWeight.w500,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
