import 'package:flutter/material.dart';
import 'home_page.dart';


class CalculatePage extends StatefulWidget{

  final int total;

  CalculatePage({Key k, this.total}) : super (key: k);

  @override
  State createState() => new CalculatePageState();
}

class CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Total Income"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.all(60.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
                "${widget.total}"
            )
          ],
        ),
      ),
    );
  }
}