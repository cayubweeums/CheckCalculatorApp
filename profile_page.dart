import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State createState() => new ProfilePageState();
}


class User {
  static double hourlyWage = 10;
  static String state = "Arkansas";
  static double takeHomeSalary = 0.8341;
  static double federalIncome = 0.0645;
  static double stateIncome = 0.0249;
  static double socialSecurity = 0.0620;
  static double medicare = 0.0145;
}



class ProfilePageState extends State<ProfilePage> {


  final TextEditingController stateWorkingIn = new TextEditingController(text: "");
  final TextEditingController hourlyWages = new TextEditingController(text: "");


  // List<double> _arkansasTax = [0.0645,0.0249,0.0620,0.0145];


  void _saveInfo(){
    User.state = stateWorkingIn.toString();
    User.hourlyWage = double.parse(hourlyWages.text);
    setStateTax();
  }


  void setStateTax() {
    if(User.state == "Arkansas"){
      // User.federalIncome = _arkansasTax[0];
      // User.stateIncome = _arkansasTax[1];
      // User.socialSecurity = _arkansasTax[2];
      // User.medicare = _arkansasTax[3];
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
              textAlign: TextAlign.center,
              controller: hourlyWages,
              decoration: InputDecoration(
                hintText: "Hourly Wages",
                hintStyle: TextStyle(
                  color: Colors.grey
                )
              ),
            ),
            new TextField(
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,
              controller: stateWorkingIn,
              decoration: InputDecoration(
                  hintText: "State ~eg. Arkansas~",
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
            ),
            new RaisedButton.icon(
              onPressed: _saveInfo,
              icon: Icon(Icons.assignment),
              color: Colors.greenAccent,
              label: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}