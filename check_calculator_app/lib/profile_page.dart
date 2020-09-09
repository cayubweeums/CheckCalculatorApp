import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State createState() => new ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}