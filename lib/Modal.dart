import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  // void dialog() {
  //   Dialog dialogWithImage = Dialog(
  //     child: Container(
  //       height: 300.0,
  //       width: 300.0,
  //       child: Column(
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.all(12),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(color: Colors.grey[300]),
  //             child: Text(
  //               "Dialog With Image",
  //               style: TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.w600),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  //   showDialog(
  //       context: context, builder: (BuildContext context) => dialogWithImage);
  // } 
  createModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          TextEditingController todoController = TextEditingController();
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text("Todo list"),
            content: TextField(
              autofocus: true,
              controller: todoController,
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text(
                  "Add New",
                  style: TextStyle(color: Colors.blue, fontSize: 20.0),
                ),
                // onPressed: () => Navigator.pop(context),
                onPressed: () { Navigator.of(context).pop(todoController.text.toString());
                debugPrint(todoController.text.toString());
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo list"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createModal(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
