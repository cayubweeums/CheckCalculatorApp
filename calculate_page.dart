import 'package:check_calculator_app/profile_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';


class CalculatePage extends StatefulWidget{

  final double total;

  CalculatePage({Key k, this.total}) : super (key: k);

  @override
  State createState() => new CalculatePageState();
}

class CalculatePageState extends State<CalculatePage> {

  final double federalTax = 6.45;
  final double stateTax = 2.49;
  final double social = 6.20;
  final double med = 1.45;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Total Income"),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.all(130.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
                "$federalTax% Federal"
            ),
            new Text(
                "$stateTax% State"
            ),
            new Text(
                "$social% Social"
            ),
            new Text(
                "$med% Medicare"
            ),
            new Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            new Text(
                "${widget.total}"
            ),
          ],
        ),
      ),
    );
  }
}
