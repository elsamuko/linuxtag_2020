import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  SecondState createState() => SecondState();
}

class SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Second")));
  }
}
