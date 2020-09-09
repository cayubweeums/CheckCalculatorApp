import 'package:check_calculator_app/calculate_page.dart';
import 'package:check_calculator_app/profile_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Check Calculator App",
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/CalculatePage": (BuildContext context) => new CalculatePage(total: HomePageState.totalMoneys,),
        "/ProfilePage":(BuildContext context) => new ProfilePage()
      },
    );
  }

}