import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var name;

  void getName() async{
    await Future.delayed(Duration(seconds: 2), (){
      name = "Anas";
    });

    print("name  : ");
    print(name);
  }

  @override
  void initState() {
    super.initState();

    getName();
    print("init called");

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
