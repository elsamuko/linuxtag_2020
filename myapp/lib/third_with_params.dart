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
    FlatButton buttonWithParam = FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Go back with param"),
      onPressed: () {
        Navigator.pop(context, "Hello from third!");
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Third"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("ThirdWithParams : ${widget.param}"),
          buttonWithParam,
        ],
      )),
    );
  }
}
