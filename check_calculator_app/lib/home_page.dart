import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  int _hoursWorked = 0;
  int _hourlyWage = 0;
  static int totalMoneys = 0;

  final TextEditingController hoursWorked = new TextEditingController(text: "");
  final TextEditingController hourlyWages = new TextEditingController(text: "");


  void _setHoursWorked(){
    _hoursWorked = int.parse(hoursWorked.text);
  }
  // int _get_hoursorked(){
  //   return _hoursWorked;
  // }
  void _setWages(){
    _hourlyWage = int.parse(hourlyWages.text);
  }
  // int _get_wages(){
  //   return _hourlyWage;
  // }
  void _calculateMoneys(){
    _setHoursWorked();
    _setWages();
    totalMoneys = _hoursWorked * _hourlyWage;
    {Navigator.of(context).pushNamed("/CalculatePage");}
  }
  int _get_moneys(){
    return totalMoneys;
  }



  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: new Container(
        color: Colors.white10,
        padding: const EdgeInsets.all(80.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: hoursWorked,
              decoration: InputDecoration(
                  hintText: "Hours Worked",
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            new TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: hourlyWages,
              decoration: InputDecoration(
                  hintText: "Hourly Wages",
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
              style: TextStyle(
                  color: Colors.green
              ),
            ),
            new IconButton(
                icon: Icon(Icons.attach_money),
                onPressed: _calculateMoneys, //TODO have this button calculate the two numbers from the two text fields and transtion to the next page with simply a large "total amount earned" all cool like in the middle of the screen
                color: Colors.green
            ),
          ],
        ),
      ),
    );
  }
}


