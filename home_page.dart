import 'package:check_calculator_app/profile_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  double _hoursWorked = 0;
  double _hourlyWage = 0;
  static double totalMoneys = 0;
  double preTotalMoney = 0;

  final TextEditingController hoursWorked = new TextEditingController(text: "");
  final TextEditingController hourlyWages = new TextEditingController(text: "");


  void _setHoursWorked(){
    _hoursWorked = double.parse(hoursWorked.text);
  }

  void _getWages(){
    _hourlyWage = User.hourlyWage;
  }


  void _calculateMoneys(){
    _setHoursWorked();
    _getWages();
    preTotalMoney = _hoursWorked * _hourlyWage;
    preTotalMoney -= (User.federalIncome + User.stateIncome + User.socialSecurity + User.medicare) * preTotalMoney;
    totalMoneys = preTotalMoney;
    {Navigator.of(context).pushNamed("/CalculatePage");}
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white10,
        padding: const EdgeInsets.all(80.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
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
            new IconButton(
                icon: Icon(Icons.attach_money),
                onPressed: _calculateMoneys,
                color: Colors.green
            ),
          ],
        ),
      ),
    );
  }
}


