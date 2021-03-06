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
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/CalculatePage": (BuildContext context) => new CalculatePage(total: HomePageState.totalMoneys,),
        "/ProfilePage":(BuildContext context) => new ProfilePage(),
        "/HomePage" :(BuildContext context) => new HomePage()
      },
    );
  }
}




class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  }


class _MyHomePageState extends State<MyHomePage>{

  static ProfilePage p = new ProfilePage();
  static HomePage h = new HomePage();


  int _currentIndex = 1;
  final List<Widget> _children = [
    p,
    h,
  ];

  void tappedBar(index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.face),
              title: Text("Profile"),
              backgroundColor: Colors.greenAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.green
          ),
        ],
        onTap: tappedBar
      ),
    );

  }

}