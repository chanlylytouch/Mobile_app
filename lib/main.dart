
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() => runApp(Pixabay());
class Pixabay extends StatefulWidget {
  @override
  _PixabayState createState() => _PixabayState();
}

class _PixabayState extends State<Pixabay> {
  Map piture;
  List imgList;
  Future getPiture() async{
    http.Response response = await http.get("https://pixabay.com/api/?key=14001068-da63091f2a2cb98e1d7cc1d82&q=beautiful&image_type=photo&pretty=true");
    // debugPrint(response.body);
    piture = json.decode(response.body);
    setState(() {
     imgList = piture['hits']; 
    });
    // debugPrint(imgList.toString());

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPiture();
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pixabay"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: imgList == null? 0 : imgList.length,
          itemBuilder: (context,i){
            return Card(
              child: Column(
                children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(imgList[i]['userImageURL']),
                          radius: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${imgList[i]['user']}",
                          style: TextStyle(fontSize: 18.0,),
                          ),
                        ),
                        // IconButton(
                        //   icon: Icon(Icons.thumb_up,color:Colors.blue),
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.favorite,color:Colors.pink),
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.thumb_down,color:Colors.blue),
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.share,color:Colors.blue),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    // padding: const EdgeInsets.all(8.0),
                    child: Image.network(imgList[i]['largeImageURL']),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}