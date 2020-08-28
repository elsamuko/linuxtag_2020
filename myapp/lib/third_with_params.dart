import 'package:flutter/material.dart';

class ThirdWithParams extends StatefulWidget {
  String param;
  ThirdWithParams(this.param, {Key key}) : super(key: key);

  @override
  ThirdWithParamsState createState() => ThirdWithParamsState();
}

class ThirdWithParamsState extends State<ThirdWithParams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("ThirdWithParams : ${widget.param}")));
  }
}
